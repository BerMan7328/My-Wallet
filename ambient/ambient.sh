yum update -y &&
yum install -y docker &&

systemctl start docker &&
systemctl enable docker &&

docker volume create mysql_data &&
docker volume create gitlab_data &&

curl -L " https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname  -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
chmod +x /usr/local/bin/docker-compose &&
