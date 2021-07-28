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
