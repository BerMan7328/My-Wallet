#download imagem
docker pull gitlab/gitlab-ce &&
#criar volumes
docker volume create gitlab_config &&
docker volume create gitlab_logs &&
docker volume create gitlab_data &&
docker run -d \
#indicar portas
-p 80:80 -p 443:443  -p 26:22 \
#nomear container
--name container-gitlab \
#setar hostname
--hostname host-gitlab \
#sempre restartar
--restart always\
#inidcação de volumes
-v /var/lib/docker/volumes/gitlab_config:/etc/gitlab \
-v /var/lib/docker/volumes/gitlab_logs:/var/log/gitlab \
-v /var/lib/docker/volumes/gitlab_data:/var/opt/gitlab \
#indicar imagem
gitlab/gitlab-ce
