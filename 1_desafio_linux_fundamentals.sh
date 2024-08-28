#!/bin/bash




echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos dos usuários..."

groupadd GRP_SEC
groupadd GRP_ADM
groupadd GRP_SEC



echo "Criando usuario..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC




echo "Especificando permissões dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_ADM /adm
chown root:GRP_ADM /adm
chown root:GRP_ADM /adm

chmod 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico





echo "FIM..."

