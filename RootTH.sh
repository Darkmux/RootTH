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
echo -e "alias root='proot -0 -w ~ $PREFIX/bin/bash'" >> $PREFIX/etc/bash.bashrc
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Actualizando Repositorios... ${verde}█
└══════════════════════════════┘
"
apt update && apt upgrade -y
sleep 0.5
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Instalando proot... ${verde}█
└═════════════════════┘
"
pkg install -y proot > /dev/null 2>&1
clear
}
function Menu_Root {
	RootTH
echo -e -n "${verde}
┌═════════════════════════┐
█ ${blanco}¿DESEA SIMULAR EL ROOT? ${verde}█
└═════════════════════════┘

┌═══════════════┐
█ [${blanco}01${verde}] ┃   ${blanco}SI   ${verde}█
█═══════════════█
█ [${blanco}02${verde}] ┃   ${blanco}NO   ${verde}█
└═══════════════┘
┃
└═>>> "${blanco}
read -r rootth

if [[ $rootth == 1 || $rootth == 01 ]]; then
echo -e ""
root
elif [[ $rootth == 2 || $rootth == 02 ]]; then
echo -e ""
exit
else
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}¡OPCIÓN INCORRECTA! ${rojo}█
└═════════════════════┘
"
sleep 1
Menu_Root
fi
}
RootTH
Requisitos
Menu_Root
