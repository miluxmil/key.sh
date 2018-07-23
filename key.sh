#/bin/bash
#################################
#Variables
trap '' 2
inicio=$HOME/map
ruta=/data/data/com.termux/files/usr/tmp
old_pass=e7df7cd2ca07f4f1ab415d457a6e1c13
pregunta="Cual es mi nombre"
respuesta=b2de038c3675f0808a9403103ccf2176
pista="es mi nombre"
version=1.0

#################################


if [ -a $HOME/.milux/key.txt ] ; then
			while [ "$validar" != "$old_pass" ] ; do
for password in 1 2 3 ; do
	let option=password++

password=$(whiptail --title "Milux Security $version" --passwordbox "Escribe tu password y preciona OK   (default: 1234)" 10 60 3>&1 1>&2 2>&3)
crypt=$password
echo "$crypt" > $ruta/sik.so
validar=$(md5sum $ruta/sik.so | awk '{print $1}')
if [ "$validar" = "$old_pass" ]; then
      clear
			rm $ruta/*.so
      bash $inicio
      exit

elif [ -z $password ] ; then
       clear
       whiptail --title "Milux security $version" --infobox "Introduce un password, para poder acceder." 3 60 
       sleep 2

else
       clear
        whiptail --title "Milux security $version" --infobox "Password incorrecto, intenta de nuevo." 3 60
        sleep 2
fi
if [ $option = 3 ] ; then
      clear
      whiptail --title "Recovery mode Milux $version" --msgbox " Parece que estas teniendo problemas para acceder, A continuacion, te mostrare unas opciones para ayudarte.    Pulsa <Ok> para Continuar" 8 60
 
			Rmenu=$(whiptail --title "Recovery Milux $version" --menu "Selecciona una opcion" 15 60 4 \
"1" "Acceder con pregunta secreta" \
"2" "Cambiar password" \
"3" "Cambiar Pregunta" \
"4" "Acerca de Milux $version"  3>&1 1>&2 2>&3)
case $Rmenu in
1)
       while [ "$respuest" != "respuesta" ]; do
 									respuest=$(whiptail --title "Recovery Milux $version" --inputbox "$pregunta ?" 10 60  3>&1 1>&2 2>&3)
									crypt_respuesta=$respuest
									echo "$crypt_respuesta" > $ruta/sik.so
									validar_resp=$(md5sum $ruta/sik.so | awk '{print $1}')
if [ "$respuesta" = "$validar_resp" ]; then
			clear
      rm $ruta/*.so
			bash $inicio;exit
elif [ -z $respuest ]; then
			whiptail --title "Milux security $version" --infobox "Debes escribir una respuesta valida." 3 60
			sleep 2
else
			whiptail --title "Milux security $version" --infobox "Respuesta incorrecta, intenta de nuevo." 3 60
			sleep 2
fi
done
;;

2)

     while [ "$validar1" != "$old_pass" ]; do
      passwd=$(whiptail --title "Milux Security $version" --passwordbox "Escribe tu password y preciona OK" 10 60 3>&1 1>&2 2>&3)
			crypt1=$passwd
			echo "$crypt1" > $ruta/sik.so
			validar1=$(md5sum $ruta/sik.so | awk '{print $1}')
if [ "$validar1" != "$old_pass" ]; then
			clear
			whiptail --title "Milux security $version" --infobox "Password incorrecto, intenta de nuevo." 3 60
			sleep 2
else 
			$CLEAN
while [ -z "$newpass" ] ; do
			newpass=$(whiptail --title "Milux Recovery $version" --passwordbox "Escribe tu nuevo password y preciona OK" 10 60 3>&1 1>&2 2>&3)
			crypt2=$newpass
			echo "$crypt2" > $ruta/sik.so
			validar2=$(md5sum $ruta/sik.so | awk '{print $1}')
if [[ -z "$newpass" ]]; then
whiptail --title "Milux Recovery $version" --infobox "Debes escribir un password valido." 3 60
sleep 2
fi
done
while [ -z "$cnewpass" ] ; do
cnewpass=$(whiptail --title "Milux Recovery $version" --passwordbox "Confirma tu nuevo password y preciona OK" 10 60 3>&1 1>&2 2>&3)
crypt22=$cnewpass
echo "$crypt22" > $ruta/sik.so
validar22=$(md5sum $ruta/sik.so | awk '{print $1}')
if [[ -z "$cnewpass" ]]; then
whiptail --title "Milux Recovery $version" --infobox "Debes escribir un password valido." 3 60
sleep 2
fi
done
if [ "$validar2" != "$validar22" ] ; then 
whiptail --title "Milux Recovery $version" --infobox "Los passwords que ingresaste no son iguales." 3 60
sleep 2
else
sed -i '7d' $0
sed -i "7i old_pass=\"$validar22\" " $0
whiptail --title "Recovery mode Milux $version" --msgbox " Se actualizo correctamente tu password.\n Tu password es: $cnewpass \n        Pulsa <Ok> para Continuar" 8 60
clear
rm $ruta/*.so
bash $inicio;exit
fi
fi 
done
;;

3)

while [ "$validar3" != "$old_pass" ]; do
      pass=$(whiptail --title "Milux Security $version" --passwordbox "Escribe tu password y preciona OK" 10 60 3>&1 1>&2 2>&3)
crypt3=$pass
echo "$crypt3" > $ruta/sik.so
validar3=$(md5sum $ruta/sik.so | awk '{print $1}')
if [ "$validar3" != "$old_pass" ]; then
clear
whiptail --title "Milux security $version" --infobox "Password incorrecto, intenta de nuevo." 3 60
sleep 2
else
while [ -z "$pregunt" ]; do
$CLEAN
      pregunt=$(whiptail --title "Milux Recovery $version" --inputbox "Escribe Tu nueva pregunta." 10 60  3>&1 1>&2 2>&3)
if [ -z "$pregunt" ]  ; then 
whiptail --title "Milux Recovery $version" --infobox "Debes escribir una pregunta." 3 60
sleep 2 
else 
while [ -z "$respuest" ]  ; do
respuest=$(whiptail --title "Milux Recovery $version" --inputbox "Escribe Tu nueva Respuesta." 10 60  3>&1 1>&2 2>&3)
crypt_answ=$respuest
echo "$crypt_answ" > $ruta/sik.so
validar_answ=$(md5sum $ruta/sik.so | awk '{print $1}')
if [ -z "$respuest" ]  ; then 
 whiptail --title "Milux Recovery $version" --infobox "Debes escribir una respuesta." 3 60
sleep 2 
fi
done
while [ -z "$pist" ]  ; do
pist=$(whiptail --title "Milux Recovery $version" --inputbox "Escribe una pista sobre tu respuesta." 10 60  3>&1 1>&2 2>&3)
if [ -z "$pist" ]  ; then 
 whiptail --title "Milux Recovery $version" --infobox "Debes escribir una pista, Es importante." 3 60
sleep 2 
fi
done
sed -i '8d' $0
 sed -i "8i pregunta=\"$pregunt\" " $0
sed -i '9d' $0
sed -i "9i respuesta=\"$validar_answ\" " $0 
sed -i '10d' $0
sed -i "10i pista=\"$pist\" " $0 
whiptail --title "Milux Recovery $version" --infobox "Se ha actualizado correctamente." 3 60
sleep 2 
rm $ruta/*.so
bash $HOME/map;exit
fi
done
fi
done

;;

4)
echo "
                  Milux Security script $version

Este script diseñado para salva guardar tus datos 
Fue  creado por:

Juan M.R. .:milux:. 
miluxmil@yahoo.com 
http://t.me/miluxmil

Con ayuda de Ivam3 by Cinderella
http://t.me/Ivam3by_Cinderella

Con el cual he logrado
Hacer posible este  proyecto, este script aun esta
en desarrollo, es decir seguire optimizandolo 
y mejorandolo.


                                                                               2018 milux " > contenido_textbox
whiptail --title "Acerca de.. - Milux security" --textbox contenido_textbox 24 80
rm contenido_textbox
;;
esac
fi
done
done
else
clear
echo "======================================================" 
echo "Espera a que se instale algunas herramientas basicas"
echo "======================================================" 
sleep 3
mkdir $HOME/.milux
echo -e "Hola curioso! \n\nNo me elimines por favor! =(\nSoy importante" > $HOME/.milux/key.txt
apt -y update && apt -y upgrade 
pkg install -y util-linux
pkg install -y dialog
pkg install -y whiptail 
if (whiptail --title "Milux security $version" --yes-button "Acepto" --no-button "No acepto" --yesno "Gracias por utilizar mi script.\n la clave por defecto es: 1234\n El cual te recomiendo cambiar inmediatamente \n \n Después de 3 intentos, podrás cambiar tu contraseña\n con el sistema de recovery que incluye este script. \n así como la pregunta y respuesta \n Respuesta default: Juan \n \n si tienes un logo de inicio colócalo en HOME con el nombre de map \n Si vas a modificar este archivo, solo respeta la sección. acerca de.. \n perzonalizalo a tu gusto" 18 78) then
bash $0
else
clear
rm -r .milux
rm $0
exit
fi
fi
trap  2
