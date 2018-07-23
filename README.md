# key.sh
Un sistema de seguridad que te permite salvaguardar tus datos en termux

Incluye:

1.- Sistema de recuperación en el cual podras
     
     1) Acceder respondiendo la pregunta 
     
     2) Cambiar el password 
     
     3) Cambiar pregunta y respuesta y una pista sobre tu respuesta

2.- la contraseña es cifrada mediante md5 y comparada para hacer la validación, 
    Al fallar 3 veces, entrará en modo recovery. 

3.- el password por defecto: 1234

4.- respuesta por defecto: Juan

5.- la primera vez que ejecutas el script, instalará las herramientas necesarias 
    Para su correcta ejecución. 
    
6.- se ejecuta con el comando bash, 
    bash key.sh 
    chmod +x key.sh;./key.sh

7.- puedes colocar el script donde tu gustes, no olvides ir a /data/data/com.termux/files/usr/etc
    Y edita el archivo bash.bashrc para que se ejecute cada vez que inicias termux. 
    
    disfruta! bugs y/o comentarios: miluxmil@yahoo.com 
