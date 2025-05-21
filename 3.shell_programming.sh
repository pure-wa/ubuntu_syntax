# 쉘 스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh

# 스크립트 실행
./myscript.sh

###########실습###########
# 터미널창에 "script practice start" 문구 출력
echo "script Practice start"
# 홈디렉토리에서 mydir이라는 폴더 생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt, file2.txt 파일생성
cd mydir
touch file1.txt
touch file2.txt
# file1.txt에는 hello from file1이라는 문구 입력
echo hello from file1 >> file1.txt
# file2.txt에는 hello from file2이라는 문구 입력
echo hello from file2 >> file2.txt
# file1.txt파일을 백업본(copy)을 생성. 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt파일을 이름은 file2_rename.txt로 생성
mv file2.txt file2_rename.txt
# 터미널 창에 "script practice end" 문구 출력
echo "script practice end"

# myscript2 생성후 아래 코드 작성 및 실행
# if문
if [ 1 ~gt 2 ]l then
    echo  "hello world1"
else 
    echo "hello world2"
fi

# 변수 선언 및 파일 / 디렉토리 검사목적
file_name=first_file.txt
if [ -f "$first_file" ]; then
    echo "$first_file file exists"
else
    echo "$first_file file dosen't exist"
fi

# for문
for a in {1..100}
do
  echo "hello world$a"
done

#for 문과 파일/ 디렉토리 목록조회
for a in *
do 
 echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
    let count= count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
# 파일 및 디렉토리 수 계산
d_count=0
f_count=0
for a in *
do
    if [ -d "$a" ]; then
        let d_count=d_count+1
    else
        let f_count=f_count+1
    fi
done
echo "filecount is $f_count"
echo "dircount is $d_count"