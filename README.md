# Sistemas_de_Envios_SQLite_Python
Sistema Dummy de Envios  tipo CRUD con SQLite y Python


## Pautas de Desarrollo Grupal

* Cada desarrollador tiene una rama/branch en la que solo ahi podrá y deberá subir sus cambios del proyecto. Los cambios a la rama Master queda reservado cuando se tenga un avance real y funcional del Proyecto.

* El código que se suba en cada rama deberá respetar la estructura de la rama Master(en lo posible que sea identica), manteniendo la organización de carpetas y archivos.

* Los cambios que cada desarrollador realice a su respectiva rama, se podrán subir a gusto, automáticamente git crea un log de esto.

* No se podrá pisar/subir cambios `bajo ningún motivo` a la Rama Master sin antes informar del cambio y asegurando la funcionalidad del código , por qué sino se rompe el proyecto.

* Si no se sabe como realizar algún paso, recomiendo primeramente leer https://guides.github.com/activities/hello-world/ o https://david-estevez.gitbooks.io/the-git-the-bad-and-the-ugly/content/es/subir-y-bajar-cambios-a-un-repositorio-remoto.html, luego probar en un repositorio personal y seguido subir los cambios a este.


</br>

## Manejo de Git de forma Colaborativa

### 1) Descargar el Proyecto Completo
* git clone https://github.com/andresWeitzel/Sistemas_de_Envios_SQLite_Python

### 2) Posicionarse sobre la rama personal
* git checkout 'nombreBranchSinComillas'

#### 3) Inicializar un repositorio local .git desde git bash.
* git init

#### 4) Agregar lo desarrollado a cada branch del repo local desde la terminal.
* git add *

#### 4) Agregar lo desarrollado en el repo local al área de Trabajo desde la terminal.
* git commit -m "agrega un comentario entre comillas"

#### 5)Le indicamos a git donde se va a almacenar el proyecto(agregar la rama al finalizar el link, en mi caso..).
* git remote add branch https://github.com/andresWeitzel/Sistemas_de_Envios_SQLite_Python/tree/andres

#### 6)Subimos los cambios al branch.
* git push origin 'nombreDeTuBranchSinComillas'


</br>


## Actualización de el proyecto a la rama del repositorio con git bash.

#### 1)Visualizamos las modificaciones realizadas en local
* git status

#### 2)Agregamos lo modificado al area de trabajo
* git add *

#### 3) Cambio de Branch
* git checkout 'nombreBranchSinComillas'


#### 3)Confirmamos las modificaciones realizadas
* git commit -m "tu commit entre comillas"


#### 4)Traemos los cambios del branch.
* git pull origin 'nombreDeTuBranchSinComillas'


#### 5)Subimos los cambios al branch.
* git push origin 'nombreDeTuBranchSinComillas'

</br>


