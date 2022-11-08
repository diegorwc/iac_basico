#!/bin/bash

# Cria pastas
mkdir -p /publico
mkdir -p /adm
mkdir -p /ven
mkdir -p /sec

# Cria grupos
groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

# Cria usuarios
useradd carlos -s /bin/bash -m -p $(openssl passwd -6 123)
useradd maria -s /bin/bash -m -p $(openssl passwd -6 123)
useradd joao -s /bin/bash -m -p $(openssl passwd -6 123)

useradd debora -s /bin/bash -m -p $(openssl passwd -6 123)
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -6 123)
useradd roberto -s /bin/bash -m -p $(openssl passwd -6 123)

useradd josefina -s /bin/bash -m -p $(openssl passwd -6 123)
useradd amanda -s /bin/bash -m -p $(openssl passwd -6 123)
useradd rogerio -s /bin/bash -m -p $(openssl passwd -6 123)


# Adiciona usuarios aos grupos
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

# Define permissoes da pasta /publico
chmod 777 /publico

# Altera grupo das pastas
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

# Altera permissoes das pastas
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec