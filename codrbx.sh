#!/bin/bash

########################################
##        Script para Backups         ##
##               RBX                  ##
##                                    ##
##                                    ##
########################################
user="SEU USER"
ip="SEU IP de SERVIDOR onde o sistema esta"
porta="22"
senha="Senha do Seu servidor"
log="/var/pure-ftpd/backups/RBXbackup/logrbx.txt"

#Entrando no Servidor RBX e Executando Comando de BKP
sshpass -p $senha ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -p$porta -o StrictHostKeyChecking=no $user@$ip "/usr/bin/utils/router.box/backup executa"

#log do processo
&& echo "Backup Foi Executado" || echo "Comando de Backup Falhou" `date +%d-%m-%Y_%H:%M:%S` >> $log
