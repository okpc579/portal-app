# portal-app
PaaS-TA Portal Container APP 버전관리를 진행하는 repository

### 유의사항
- openjdk 1.8.0, npm, node(9.11.1에서 테스트 진행) 설치 필요  
  (scripts/util-install.sh 실행 시 설치 가능)  

### scripts 폴더 설명

| Name | 설명 |
|:-----------------|:------------|
| scripts | Portal APP 묶음과 버전 관리를 위한 Shell Script 폴더 |
| scripts/variables.yml | Portal APP zipfile 생성과 submodule 버전 관리를 위한 변수 파일 |
| scripts/git-submodule-update.sh | 최초 git clone 시 submodule update Shell 파일 |
| scripts/util-install.sh | module build를 위한 java, node 설치 지원 Shell 파일 |
| scripts/git-submodule-change.sh | git submodule의 버전 관리를 지원하는 Shell 파일 |
| scripts/make-portal-app.sh | Portal APP zipfile 생성을 지원하는 Shell 파일 |

※ 공식적으로 지원되는 Shell Script가 아니기에 스크립트 내용은 예고 없이 언제든 변경 될 수 있습니다.
