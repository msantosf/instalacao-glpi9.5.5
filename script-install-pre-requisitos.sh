echo "#################### INICIO UPDATE/UPGRADE ####################"
sudo apt update -y
sudo apt upgrade -y
echo "#################### FIM UPDATE/UPGRADE ####################"

echo "#################### INICIO INSTALACAO APACHE ####################"
#Instalando o APACHE
sudo apt install -y apache2 apache2-utils
echo "#################### FIM INSTALAÇÃO APACHE ####################"

echo "#################### INICIO INSTALAÇÃO MARIADB ####################"
#Instalando o MariaDB
sudo apt install -y mariadb-server mariadb-client

## Continuidade instalação mariaDB
sudo mysql_secure_installation

echo "#################### FIM INSTALAÇÃO MARIADB ####################"

echo "#################### INICIO INSTALAÇÃO PHPMYADMIN ####################"
sudo apt install -y phpmyadmin php7.4-zip 
echo "#################### FIM INSTALAÇÃO PHPMYADMIN ####################"

echo "#################### INICIO INSTALAÇÃO PHP ####################"
#Instalando PHP e PHP 7.4 
sudo apt install -y php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-common php7.4-json php7.4-opcache php7.4-readline php7.4-curl php7.4-gd php7.4-mbstring php-mysqli php-simplexml php7.4-intl php7.4-xml php-cas php7.4-bz2 php7.4-xmlrpc php7.4-ldap php-apcu
echo "#################### FIM INSTALAÇÃO PHP ####################"

echo "#################### INICIO INSTALAÇÃO DE REQUIISITOS ####################"
#Instalando outros pre-requisitos
sudo apt install -y zip
sudo apt install -y bzip2
echo "#################### FIM INSTALAÇÃO REQUISITOS ADC ####################"

### CRIAR USUÁRIO COM PERMISSÇAO DE ADMIN NO BANCO

#sudo mariadb
# use mysql;
#CREATE USER 'admin'@'localhost' IDENTIFIED BY 'm0g4m9lx';
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
#FLUSH PRIVILEGES;

### FAZER DOWNLOAD GLPI
# tar -zxvf 

### [opcional] ALTERAR /etc/apache2/sites-available/000-default.conf E FORÇAR QUE O SERVIDOR VIRTUAL FIQUE AO ACESSAR DIRETAMENTE O IP, AO INVÉS DA PASTA html

###### CASO SEJA ATUALIZAÇÃO - EXECUTAR OS SEGUINTES COMANDOS

## >>> FAZENDO BACKUP BASE ANTIGA:
#	mysqldump -u admin -p nome_do_banco > /home/user/backup_banco.sql

## >>> RESTAURANDO O BACKUP NA BASE NOVA
#	mysql -u admin -p noma_base_zerada < backup_banco.sql


## EM SEGUIDA INICIAR A ATUALIZAÇÃO DO GLPI

## POR FIM COPIAR A PASTA /var/www/glpi/files PARA A NOVA INSTALAÇÃO. 
# OBSERVAÇÃO: copiar pastas uma por uma utilizando o WinSCP, não tentar copiar todas ao mesmo tempo
