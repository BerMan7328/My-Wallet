FROM centos:7

RUN yum update -y 
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y git curl
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs
RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg
RUN yum install -y yarn

RUN groupadd -g 1000 mywallet && adduser -c "mywallet" -u 1000 -g mywallet mywallet && usermod -aG wheel mywallet
USER mywallet

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN yarn add react node react-icons styled-components react-dom react-router-dom react-scripts react-switch typescript uuidv4 user-event jest-dom

COPY package.json ./
COPY tsconfig.json ./
COPY yarn.lock ./

COPY . ./

EXPOSE 5000

CMD ["npm", "start"]
