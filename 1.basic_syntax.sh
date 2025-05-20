#현재 위치 경로를 출력
pwd

#햔재 위치에서 파일 및 폴더 조회
ls

#목록조회 자세히
ls -l

#목록조회 자세히, 숨김파일까지
ls -al

#목록조회 자세히,숨김파일,오래된 순 정렬
ls -alrt


#목록조회 자세히,숨김파일,최신순 정렬
ls -alt

#디렉토리 생성
mkdir sanghwan_dir

#특정 디렉토리로 이동
cd sanghwan_dir

#상위 디렉토리로 이동
cd ..

#또는 cd ../ 상위 디렉토리로 이동

#루트 디렉토리(최상위 디렉토리)이동
cd /

# 직전 디렉토리로 이동
cd ~

# 홈경로(/home/본인게정)으로 이동
cd 

#상대경로와 절대 경로
#상대경로 : cd ../..
#절대경로 : cd/home

# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 터미널창에 출력하기
cat first_file.txt

# 파일내용 상위 10줄 출력하기
head 파일명

# 파일내용 하위 10줄 출력하기
tail 파일명

# 파일내용 상/하위 n개 조회
tail -n 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 파일내용 편집기 : nano,vi
# 도스키 위/아래를 통해 이전 명령어를 조회

# 이전에 했던 명령어들 조회
history

# 현재 터미널에 보이는 명령어 내용 정리
clear

# ^c를 통해 입력명령어를 취소할수있음.

# 파일 삭제 명령어.
rm 파일명

# 폴더째 삭제
rm -r 폴더명

# 터미널 창에 문자열을 출력("붙여야함")
echo "hello world"
# echo를 통해 파일에 내용 출력
# >: 덭어쓰기 >>: 추가모드
echo "hello world" > first_file.txt

# cp는 복사명령어
# cp 복사대상 복사될 파일명
# 폴더 복사시에는 -r 옵션
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# grap : 파일 내에서 문자열 찾기
# r: 모든 디렉토리 내, n : 라인 수 출력 , i: 대소문자 구분 없이
grep -rni "hello"

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -type f 

# find와 grep의 혼용
find . -name "*.txt" | xargs grep =rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고 
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기

#find . -name "first*" -exec grep -rni "hello" {} \ 오답
find . -name "first*" -type f | xargs grep -rni "hello"

# 1.git add .
# 2.git commit -m "하고싶은말 ㄱㄱ"
# 3.git push origin main 
#1.github에서 레포 생성
#2.vs code에서 clone -> github에 주소 및 인증 정보포함

