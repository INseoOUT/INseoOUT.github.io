# garden-src

김인서의 공부 트리 빌더 — 옵시디언 vault의 공개 노트를 [Quartz 5](https://quartz.jzhao.xyz)로 빌드해 리포 루트의 `garden/`에 산출물을 놓고, 사이트와 함께 **https://rapidseo.me/garden** 으로 서빙한다.

## 구조

- `content/` — 옵시디언 vault(`iCloud~md~obsidian/Inseo`)에서 동기화된 노트. **직접 수정 금지** (동기화 때 덮어씀). 단 `content/index.md`는 리포에서 관리.
- `quartz.config.yaml` — 사이트 설정 (한국어 로케일·민트 테마·cname 비활성). 이 파일이 있으면 `quartz.config.default.yaml`을 **대체**하므로 전체 설정을 담는다.
- `sync-garden.ps1` — vault 동기화 → 빌드 → `../garden` 갱신 → 커밋·푸시 한 방.
- `../garden/` — 빌드 산출물 (커밋 대상). GitHub Pages가 그대로 서빙.

## 노트 갱신

옵시디언에서 쓰고 저장한 뒤:

```powershell
cd garden-src
.\sync-garden.ps1
```

## 최초 셋업 / 로컬 미리보기

```powershell
npm ci
npx quartz plugin install   # .quartz/plugins 받기 (최초 1회)
npx quartz build --serve    # http://localhost:8080 미리보기
```
