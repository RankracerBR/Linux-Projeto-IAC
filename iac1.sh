#!/bin/bash

echo "Criando Diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -c "Carlos Zezo" -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -c "Maria Zuetania" -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -c "João Ferreira" -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -c "Debora Emilia" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -c "Sebastiana Mello" -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -c "Roberto da Luz" -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -c "Josefina Cruz" -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -c "Amanda de Jesus" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123) -c "Rogério da Silva" -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim........Uwu"
