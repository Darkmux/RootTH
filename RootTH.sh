#!/bin/bash
#
# Created by: Termux Hacking
#
# RootTH
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
# FUNCIONES
#
function RootTH {
	sleep 0.5
	clear
echo -e "${verde}
 ▄▄▄▄▄▄                                  ▄▄▄▄▄▄▄▄  ▄▄    ▄▄
 ██▀▀▀▀██                        ██      ▀▀▀██▀▀▀  ██    ██
 ██    ██   ▄████▄    ▄████▄   ███████      ██     ██    ██
 ███████   ██▀  ▀██  ██▀  ▀██    ██         ██     ████████
 ██  ▀██▄  ██    ██  ██    ██    ██         ██     ██    ██
 ██    ██  ▀██▄▄██▀  ▀██▄▄██▀    ██▄▄▄      ██     ██    ██
 ▀▀    ▀▀▀   ▀▀▀▀      ▀▀▀▀       ▀▀▀▀      ▀▀     ▀▀    ▀▀
 "${blanco}
}
function Requisitos {
cp $PREFIX/etc/bash.bashrc $PREFIX/etc/bash.bashrc_old
rm $PREFIX/etc/bash.bashrc
mv bash.bashrc $PREFIX/etc
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"
apt update && apt upgrade -y
RootTH
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Instalando proot... ${verde}█
└═════════════════════┘
"
pkg install -y proot > /dev/null 2>&1
RootTH
echo -e "${verde}
┌════════════════════════════════════┐
█ ${blanco}ROOT FALSO CORRECTAMENTE INSTALADO ${verde}█
█ ${blanco}ABRIR UNA NUEVA SESIÓN EN TERMUX Y ${verde}█
█ ${blanco}EJECUTAR EL SIGUIENTE COMANDO:     ${verde}█
└════════════════════════════════════┘
┃
┃    ┌══════┐
└═>>>█ ${blanco}root ${verde}█
     └══════┘
"${blanco}
}
RootTH
Requisitos
