___
# AWS의 책임
![[Pasted image 20251104224500.png]]
## AWS Computing Service
#### EC2![[스크린샷 2025-11-04 오후 10.47.49.png]]
[[Cloud]]에 위치한 가상 서버 인스턴스
#### ECS, EKS, Fargate
[[Docker]] [[Container]]를 대규모로 실행하고 관리할 수 있는 서비스
#### Lambda
이벤트 호출 시 마다 작동하는 서버리스 컴퓨팅 서비스
## Simple Storage Service(S3)
- Web 접근 가능한 객체 저장소
- 무한 확장성
- 정적 웹사이트 호스팅
- 수명 주기 정책
## Elastic File System
서버리스 공유 스토리지
## ECS Vs. EKS
![[스크린샷 2025-11-04 오후 10.34.36.png]]
## EKS 
### 특징
- [[Kubernetes|k8s]]를 수정하지 않고 구동
- 관리형 쿠버네티스 환경
### EC2 실행 환경
- Auto [[Scalability|Scaling]] Group 생성 후, Cluster와 연결

