#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos Brasil" -m -s /bin/bash/ -p $(openssl passwd Senha123)
passwd carlos -e
useradd maria -c "Maria Brasil" -m -s /bin/bash/ -p $(openssl passwd Senha123)
passwd maria -e
useradd joao -c "João Brasil" -m -s /bin/bash/ -p $(openssl passwd Senha123)
passwd joao -e

useradd debora -c "Débora Silva" -m -s /bin/bash/ -p $(openssl passwd Senha123)
passwd bedora -e
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash/ -p $(openssl passwd Senha123)
passwd sebastiana -e
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd roberto -e

useradd josefina -c "Josefina Maia" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd josefina -e
useradd amanda -c "Amanda Maia" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd amanda -e
useradd rogerio -c "Rogério Maia" -m -s /bin/bash -p $(openssl passwd Senha123)
passwd rogerio -e

echo "Especificando Permissões dos diretórios"

chmod root:GRP_ADM /adm
chmod root:GRP_VEN /ven
chmod root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando"

