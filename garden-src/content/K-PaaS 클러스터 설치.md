---

---
---
##### https://github.com/K-PaaS/container-platform/blob/master/install-guide/standalone/cp-cluster-install-single.md
# 클러스터 설치
### 흐름
2.1.5 -> 2.2 -> 2.3 -> 2.4 -> 2.5 -> 2.6 -> 2.1.6
### 목적
 K-PaaS 컨테이너 플랫폼의 클러스터를 설치
## 인스턴스 환경 구성
![[스크린샷 2025-11-04 오전 10.37.08.png]]
## NFS 스토리지 설치
- 노드 5 개 중, 마스터 노드가 아닌 4개 중 하나를 선택하여 설치
- 외부에서 NFS에 접근하기 위한 공유 디렉터리 설정 진행
## SSH 생성 및 배포
- 마스터 노드에서 SSH 키 쌍 발급
- 공개키를 워커 노드 및 NFS에 배포
## Deployment 다운로드
- 마스터 노드에서, Deployment.yaml 파일 다운로드
- deployment Configuration 설정
	- NFS 노드 사설 IP는 200 초반대로
	- ingres 사설 IP 주소는 200 후반대로
	- ip 중복을 막기 위해
- 배포
## Ingress 설정
- Ingress Configuration 설정
- 새 Network Interface 생성
- 마스터 노드에 Network Interface 부착
- 마스터 노드에, SSH 접근을 위한 플로팅 IP 제외, 플로팅IP 추가
- Network Interface에 플로팅 IP 부착
