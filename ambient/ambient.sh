yum update -y &&
yum install -y docker &&

systemctl start docker &&
systemctl enable docker &&

docker volume create mysql_data &&
docker volume create gitlab_data &&

