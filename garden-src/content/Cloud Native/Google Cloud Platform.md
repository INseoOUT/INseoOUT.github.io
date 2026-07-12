___
# GCP란
구글이 제공하는 클라우드 컴퓨팅 서비스
## 특징 
구글의 방대한 글로벌 네트워크 인프라를 기반으로 데이터 센터 간 초고속 네트워크 제공
#### AL/ML에 최적화된 플랫폼
#### 오픈 소스 친화성
- [[Kubernetes]]초기 단계 개발 == 구글
- Google Kubernetes Engine을 통한 성숙한 Managed [[Kubernetes]]제공
- Tensorflow, Apache Beam, Istio 등 오픈소스 주도
#### 비용이 효율적
- 오래 쓸 수록 자동 할인되는 지속 사용 할인 제도 제공
- 일시적으로 빌리는 VM 서비스 제공
#### 데이터 분석에 강점
- BigQuery : PB 단위의 데이터 분석을 수 초만에 처리
- 실시간 데이터 스트리밍 분석 최적화
- 데이터 시각화 기능 강화
#### [[Hybrid Cloud]] & [[Multi Cloud]] 지원
- Anthos: 온프레미스 + 다른 클라우드까지 [[Kubernetes]] 통합 관리
## Google Cloud Storage
![[Pasted image 20251104205539.png]]
- 버킷 -> 객체 저장 구조
- 버킷 : 객체를 저장하는 논리적인 컨테이너
- 객체 : 실제 파일 + 메타데이터버전
- 관리 : 파일 변경 시 이전 버전 저장, 삭제해도 복구 가능
#### AWS S3 Vs. GCP GCS
![[스크린샷 2025-11-04 오후 8.53.27.png]]
![[Pasted image 20251104205539.png]]
## AWS EC2 Vs. GCP GCE
#### Google Compute Engine
- AWS의 EC2와 같음
- 커스텀 머신 타입과 Live Migration으로 더 유연성과 가용성을 높임
- VM 무중단 유지보수 + 업그레이드
## AWS에 대응하는 GCP 서비스
![[스크린샷 2025-11-04 오후 9.09.59.png]]
## Google Kubernetes Engine
- All Managed
- GKE Standard
	- Worker 관리형 - Node Pool 단위로 관리를 훨씬 쉽게 해줌
- GKE Autopilot
	- 완전 Serverless [[Kubernetes]] 클러스터
## Cloud Run
- AWS Fargate와 같은 Serverless [[Container]] 실행 플랫폼
- 완전 관리형 : 컨테이너 이미지만 제공하면 바로 실행 가능
- 트래픽에 따라 자동 확장
- 요금은 초 단위 과금
- HTTP 요청 기반 자동 스케일링
## GKE Vs. Cloud Run
![[스크린샷 2025-11-04 오후 9.15.44.png]]
