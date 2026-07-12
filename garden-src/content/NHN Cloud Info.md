___
# 알고 갈 개념
## [[Virtual Private Cloud]]
![[Pasted image 20251102230423.png]]
## [[Subnet]]
![[Pasted image 20251102230551.png]]
## [[Routing Table]]
![[스크린샷 2025-11-02 오후 11.06.46.png]]
# [[Network Interface]]
![[Pasted image 20251102230757.png]]
## Routing
[[Routing Table|Routing Table]]에 기록된 전달 경로에 맞춰 트래픽 경로를 지정해줌
## Internet Gateway
[[Virtual Private Cloud|VPC]]의 리소스를 인터넷에 연결하기 위한 게이트웨이
## Floating IP
인터넷에서 인스턴스에 직접 엑세스 혹은 인터넷에 연결하기 위해 필요한 IP 주소
## Security Group
인스턴스의 송수신 트래픽을 제어하여 인스턴스를 보호할 목적으로 사용 
## Instance
가상의 CPU, 메모리, Root Block Storage로 구성된 가상 서버
## Key air
Public Key Infrastructure를 바탕으로 한 SSH 공개 키-개인 키 쌍
# [[K-PaaS 클러스터 설치|클러스터 설치]]
![[스크린샷 2025-11-02 오후 11.15.30.png]]
## 시스템 구성
![[스크린샷 2025-11-04 오전 10.33.34.png]]
## 특징
한개의 마스터 노드와 3개의 워커 노드로 구성된 쿠버네티스 클러스터
NFS Storage node를 사용한 스토리지 공유 시스템
# [[K-PaaS 포털 설치|포털 설치]]
클러스터 관리를 포털을 통해 수행할 수 있다.
# [[K-PaaS 파이프라인 설치]]
CI/CD 구축을 할 수 있다.
# [[K-PaaS 소스 컨트롤 설치]]
Git과 같은 형상관리 도구