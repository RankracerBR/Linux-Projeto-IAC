#!/bin/bash

echo "Criando usuários do sistema....."

useradd guest10 -c "Convidado especial" -s /bin/bash -m -p $(openssl passwd eorankracerBR1) 
passwd guest10 -e

useradd guest11 -c "Convidado especial" -s /bin/bash -m -p $(openssl passwd eorankracerBR1)
passwd guest11 -e

useradd guest12 -c "Convidado especial" -s /bin/bash -m -p $(openssl passwd eorankracerBR1)
passwd guest12 -e

useradd guest13 -c "Convidado especial" -s /bin/bash -m -p $(openssl passwd eorankracerBR1)
passwd guest13 -e

echo "Finalizado"
