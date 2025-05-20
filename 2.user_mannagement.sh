# 사용자 추가
sudo useradd newuser1 #맥일 경우 root계정이라 sudo 빼도됨
sudo passwd newuser1

# 사용자 변경 : 변경하고자 하는 계정의 비빌번호 
# sudo의 경우 현재 사용자의 비밀번호
su - newuser1

# chmod는 권한부여 : r(4), w(2) , x(1), u(사용자)g(그룹)o(그외)로 구성
chmod 644 파일명
chmod u+x 파일명
chmod u-x 파일명
chmod u=r 파일명

# 소유자: 그룹 변경
chown 