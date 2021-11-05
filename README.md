# Sistemas_de_Envios_SQLite_Python
Sistema Dummy de Envios  tipo CRUD con SQLite y Python


## Pautas de Desarrollo Grupal

* Cada desarrollador tiene una rama/branch en la que solo ahi podrá y deberá subir sus cambios del proyecto. Los cambios a la rama Master queda reservado cuando se tenga un avance real y funcional del Proyecto.

* El código que se suba en cada rama deberá respetar la estructura de la rama Master(en lo posible que sea identica), manteniendo la organización de carpetas y archivos.

* Los cambios que cada desarrollador realice a su respectiva rama, se podrán subir a gusto, automáticamente git crea un log de esto.

* No se podrá pisar/subir cambios `bajo ningún motivo` a la Rama Master sin antes informar del cambio y asegurando la funcionalidad del código , por qué sino se rompe el proyecto.

* Si no se sabe como realizar algún paso, recomiendo primeramente leer https://guides.github.com/activities/hello-world/ , luego probar en un repositorio personal y seguido subir los cambios a este.


</br>

## Manejo de Git

## Subir el proyecto al repositorio desde bash 

#### 1)Creamos un nuevo repositorio en GitHub.

#### 2)Inicializamos nuestro repositorio local .git desde git bash.
* git init

#### 3)Agregamos lo desarrollado a nuestro repo local desde la terminal.
* git add *

#### 4)Agregamos lo que tenemos en nuestro repo local al área de Trabajo desde la terminal.
* git commit -m "agrega un comentario entre comillas"

#### 5)Le indicamos a git donde se va a almacenar nuestro proyecto(fijate en tu repositorio de github cual es el enlace de tu proyecto(esta en code)).
* git remote add origin https://github.com/andresWeitzel/Administracion_Gestion_BasesDeDatos_PostgreSQL

#### 6)Subimos nuestro proyecto.
* git push -u origin master


</br>


## Actualización de el proyecto al repositorio con git bash.

#### 1)Visualizamos las modificaciones realizadas en local
* git status

#### 2)Agregamos lo modificado al area de trabajo
* git add *

#### 3) Cambio de Branch
* git checkout 'nombreBranchSinComillas'


#### 3)Confirmamos las modificaciones realizadas
* git commit -m "tu commit entre comillas"

#### 4)Sincronizamos y traemos todos los cambios del repositorio remoto a la rama en la que estemos trabajando actualmente.
##### (SOLO SI SE REALIZARON CAMBIOS DESDE OTRA LADO, ej: en github u/o/y un equipo de trabajo)
* git pull https://github.com/andresWeitzel/Administracion_Gestion_BasesDeDatos_PostgreSQL

#### 5)Enviamos todos los cambios locales al repo en github
* git push https://github.com/andresWeitzel/Administracion_Gestion_BasesDeDatos_PostgreSQL

</br>


