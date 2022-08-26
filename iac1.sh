#!/bin/bash
#Essa é a primeira versão, baseada com o que foi passado no curso.
echo "Criando diretórios..."

mkdir /Publico
mkdir /Adm
mkdir /Sec
mkdir /Ven

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários e atribuindo aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC

echo "Atribuindo politicas aos diretórios..."

chown root:GRP_ADM /Adm; chmod 770 /Adm
chown root:GRP_VEN /Ven; chmod 770 /Ven
chown root:GRP_SEC /Sec; chmod 770 /Sec
chmod 777 /Publico

echo "---FIM---"
