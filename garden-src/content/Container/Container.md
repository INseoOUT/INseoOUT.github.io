___
# 컨테이너란
![[Pasted image 20251102190043.png]]

가상화된 운영체제 위에서 어플리케이션의 독립적 실행에 필요한 파일(소스코드, 라이브러리 등)을 모든 패키지
**Cloud Native 소프트웨어의 가장 작은 단위**
![[Pasted image 20251102190127.png]]
어플리케이션의 빠른 배포와 실행을 위해 컨테이너 기술 등장
## 특징
- 관심사 분리
- 개발 & 테스트 & 운영 환경의 일관성
- [[Continuous Integration & Continuous Deployment|CICD]]
- 이식성
- 가시성
- 기민한 어플리케이션 생성 및 배포
- 어플리케이션 중심 관리
- 서비스 간 결합도 낮춤, 유연한 서비스 제공
## Container Engine
- 컨테이너를 관리하기 위한 API나 CLI 도구를 제공하는 소프트웨어
- docker-ce, Podman, rkt 등 
## Container Runtime
- Root FileSystem과 Metadata를 받아 컨테이너를 실행하는 도구
- runC, containerd, cri-o 등
## Container Orchestration
- 컨테이너의 프로비저닝, 배포, 네트워킹, 확장, 가용성 및 라이프사이클 관리를 자동화하는 기술
- 오케스트레이션은 Configuration, Container Deployment, LifeCycle Management 3단계로 동작
- 사용자가 원하는 상태로 동작하도록 관리하는 역할
![[Pasted image 20251102190200.png]]
## Hypervisor Vs. Container
![[Pasted image 20251102190829.png]]
