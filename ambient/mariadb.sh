#download da imagem mariadb
docker pull mariadb &&  
#criação de volume
docker volume create mariadb_data &&  
docker run -d \
#redirecionamento de porta
-p 3306:3306 \ 
#nomear container
--name mariadb \ 
#setar hostname
--hostname host-mariadb \
# setar senha root 
-e MYSQL_ROOT_PASSWORD=Bernardo123 \ 
#indicação de volume
-v /var/lib/docker/volumes/mariadb_data:/var/lib/mysql \
#indicação imagem
Mariadb
