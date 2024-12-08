# TP-CURSOS

### Integrantes
* 47858 - Grau, Juan Bautista
* 49703 - Rozas, Alvaro

### Repositorios
* [frontend app](http://hyperlinkToGihubOrGitlab)
* [backend app](http://hyperlinkToGihubOrGitlab)

## Tema: CURSOS
### Descripción
Un establecimiento educativo nos solicito el desarrollo de una pagina web para gestionar sus cursos. Esto le permitira a un alumno registrarse, inscribirse y obtener su estado en cada curso. A los docentes, crear y dictar cursos, asi como calificar a los alumnos de los mismos. Cada curso cuenta con talleres que se dictan a lo largo del curso, el promedio de la calificacion de un alumno en todos los talleres del curso, significara su calificacion en el curso (pudiendo esta ultima, ser modificada por el docente). El sistema deberá poder listar todos los cursos, talleres, docentes y alumnos, y permitir a los usuarios con acceso editarlos, añadir otros, o borrarlos.


### Modelo
![imagen del modelo]()

*Nota*: incluir un link con la imagen de un modelo, puede ser modelo de dominio, diagrama de clases, DER. Si lo prefieren pueden utilizar diagramas con [Mermaid](https://mermaid.js.org) en lugar de imágenes.

## Alcance Funcional 

### Alcance Mínimo

*Nota*: el siguiente es un ejemplo para un grupo de 3 integrantes para un sistema de hotel. El 

Regularidad:
|Req|Detalle|
|:-|:-|
|CRUD simple|1. CRUD Curso<br>2. CRUD Taller<br>|
|CRUD dependiente|1. CRUD Usuario {depende de} CRUD Rol<br>|
|Listado<br>+<br>detalle| 1. Listado de cursos filtrado por fecha de comienzo, muestra nombre y capacidad del curso => detalle CRUD Curso<br> 2. Listado de inscripciones filtrado por rango de fecha, muestra nombre de curso, fecha inicio y fin del curso, capacidad y nombre del usuario => detalle muestra datos completos de la inscripcion y del usuario|
|CUU/Epic|1. Inscribirse a un curso<br>2. Dar de alta un curso con sus talleres correspondientes|


Adicionales para Aprobación
|Req|Detalle|
|:-|:-|
|CRUD |1. CRUD Rol<br>2. CRUD Inscripcion<br>3. CRUD Calificacion<br>4. CRUD Registro<br>7. CRUD Usuario|
|CUU/Epic|1. Reservar una habitación para la estadía<br>2. Realizar el check-in de una reserva<br>3. Realizar el check-out y facturación de estadía y servicios|


### Alcance Adicional Voluntario

*Nota*: El Alcance Adicional Voluntario es opcional, pero ayuda a que la funcionalidad del sistema esté completa y será considerado en la nota en función de su complejidad y esfuerzo.

|Req|Detalle|
|:-|:-|
|Listados |1. Estadía del día filtrado por fecha muestra, cliente, habitaciones y estado <br>2. Reservas filtradas por cliente muestra datos del cliente y de cada reserve fechas, estado cantidad de habitaciones y huespedes|
|CUU/Epic|1. Consumir servicios<br>2. Cancelación de reserva|
|Otros|1. Envío de recordatorio de reserva por email|

