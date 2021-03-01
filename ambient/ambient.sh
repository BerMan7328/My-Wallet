yum update -y &&
yum install -y docker &&
yum install -y git &&
yum install -y yarn &&

systemctl start docker &&
systemctl enable docker &&

docker volume create mysql_data &&
docker volume create gitlab_data &&
docker volume create gitlab_logs &&
docker volume create gitlab_config &&
docker volume create gitlab-runner_config &&

curl -L " https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname  -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
chmod +x /usr/local/bin/docker-compose &&

yarn add react &&
yarn add node &&
yarn add styled-components &&
yarn add react-dom &&
yarn add react-router-dom &&
yarn add react-scripts &&
yarn add react-switch &&
yarn add typescript &&
yarn add uuidv4 &&
yarn add user-event &&
yarn add jest-dom &&

cd /tmp &&
git init &&
git remote add origin https://github.com/BerMan7328/My-Wallet.git &&
git pull https://github.com/BerMan7328/My-Wallet.git &&
cd /tmp/My-Wallet/ambient &&
docker-compose up -d &&

rm -rf /tmp/My-Wallet &&

echo "ambiente finalizado, containers ativos"
