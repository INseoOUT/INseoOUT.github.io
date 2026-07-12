___
# Docker란
![[Pasted image 20251102191447.png]]
어플리케이션과 실행환경을 포함한 [[Container]]를 관리 및 운영하는 오픈소스 가상화 플랫폼
## 특징
- 빠른 실행 속도
- 손쉬운 배포
- 가벼운 용량
- 어플리케이션의 독립성
- 높은 보안성 보장
- 낮은 오버헤드
- 이미지 생성 및 공유
## Dockerfile
![[Pasted image 20251102191638.png]]
도커 이미지를 생성하기 위한 설정 파일
도커 파일 명령어를 사용하여 작성 
## Docker Image
![[Pasted image 20251102191722.png]]
[[Container]]실행에 필요한 파일과 설정 값 등을 포함하고 있으며, 도커 파일을 빌드하여 생성 
## Docker [[Container]]
- 격리된 공간에서 어플리케이션을 동작시킨 상태
- 도커 이미지를 실행하여 도커 [[Container]]를 실행
## Docker Vs. [[Pod Manager Tool|Podman]]
![[Pasted image 20251102191901.png]]
## Daemon
서비스 요청에 응답하기 위해 오랫동안 실행중인 백그라운드 프로세스
## [[Docker CLI]]
Docker 명령은 대부분 추가 권한 없이 일반 사용자로 실행 가능
