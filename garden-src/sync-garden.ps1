# sync-garden.ps1 — 옵시디언 vault → content 동기화 → Quartz 빌드 → ../garden 산출물 갱신 → 커밋·푸시
#
# 사용법:  cd garden-src; .\sync-garden.ps1          # 전체 파이프라인 (동기화→빌드→커밋→푸시)
#          cd garden-src; .\sync-garden.ps1 -NoPush  # 푸시만 생략
#
# vault의 .obsidian / _temp / desktop.ini 는 복사하지 않는다.
# content/index.md 는 리포에서 관리하므로 동기화 시 보존된다.
param([switch]$NoPush)

$vault   = "C:\Users\kim00\iCloudDrive\iCloud~md~obsidian\Inseo"
$src     = $PSScriptRoot                       # garden-src
$repo    = Split-Path $src -Parent             # 리포 루트
$content = Join-Path $src "content"
$outDir  = Join-Path $repo "garden"

if (-not (Test-Path $vault)) { Write-Error "vault를 찾을 수 없음: $vault"; exit 1 }

# 1) vault → content (index.md 보존)
$indexBak = Join-Path $env:TEMP "garden-index.md.bak"
Copy-Item (Join-Path $content "index.md") $indexBak -Force
robocopy $vault $content /MIR /XD .obsidian _temp /XF desktop.ini /NFL /NDL /NJH /NJS | Out-Null
if ($LASTEXITCODE -ge 8) { Write-Error "robocopy 실패 (exit $LASTEXITCODE)"; exit 1 }
Copy-Item $indexBak (Join-Path $content "index.md") -Force
Write-Host "① 동기화: $((Get-ChildItem $content -Recurse -Filter *.md).Count)개 노트"

# 2) Quartz 빌드 (.quartz/plugins 없으면 먼저 설치)
Set-Location $src
if (-not (Test-Path (Join-Path $src ".quartz\plugins"))) { npx quartz plugin install }
npx quartz build
if ($LASTEXITCODE -ne 0) { Write-Error "Quartz 빌드 실패"; exit 1 }
Write-Host "② 빌드 완료"

# 3) public → ../garden
robocopy (Join-Path $src "public") $outDir /MIR /NFL /NDL /NJH /NJS | Out-Null
if ($LASTEXITCODE -ge 8) { Write-Error "산출물 복사 실패"; exit 1 }
Write-Host "③ garden/ 갱신"

# 4) 커밋 + 푸시
Set-Location $repo
git add garden-src/content garden
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) { Write-Host "변경 없음 — 커밋 생략"; exit 0 }
git commit -m "sync: 공부 트리 갱신 ($(Get-Date -Format 'yyyy-MM-dd'))"
if (-not $NoPush) {
  git push origin HEAD
  Write-Host "④ 푸시 완료 — 잠시 뒤 rapidseo.me/garden 반영"
}
