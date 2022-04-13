# portal-app

### portal-app.zip을 만들고 버전관리를 진행하는 repository 입니다.
### openjdk 1.8.0, npm, node(9.11.1에서 테스트 진행)이 설치되어있어야 합니다. - utils/util-install.sh 실행 시 설치 가능

### utils - portal-app의 원활한 작업을 위한 shell script 모음집(공식적으로 지원되는 Shell이 아니기에 스크립트 내용은 예고 없이 언제든 변경 될 수 있습니다.)
#### utils/variables.yml - zip 생성과 submodule 컨트롤을 위한 변수 파일
#### utils/git-submodule-update.sh - 처음 git clone 시 submodule update shell 파일
#### utils/util-install.sh - build를 위한 java, node 설치 지원 shell 파일
#### utils/git-submodule-change.sh - git submodule의 버전 컨트롤을 지원하는 shell 파일
#### utils/make-portal-app.sh - portal-app.zip 파일 생성을 지원하는 shell 파일
