# TP-CURSOS

### Integrantes
* 47858 - Grau, Juan Bautista
* 49703 - Rozas, Alvaro

### Repositorios
* [frontend app]([http://hyperlinkToGihubOrGitlab](https://github.com/bautigr02/Frontend-Cursos.git))
* [backend app](http://hyperlinkToGihubOrGitlab)

## Tema: CURSOS
### Descripción
Un establecimiento educativo nos solicito el desarrollo de una pagina web para gestionar sus cursos. Esto le permitira a un alumno registrarse, inscribirse y obtener su estado en cada curso. A los docentes, crear y dictar cursos, asi como calificar a los alumnos de los mismos. Cada curso cuenta con talleres que se dictan a lo largo del curso, el promedio de la calificacion de un alumno en todos los talleres del curso, significara su calificacion en el curso (pudiendo esta ultima, ser modificada por el docente). El sistema deberá poder listar todos los cursos, talleres, docentes y alumnos, y permitir a los usuarios con acceso editarlos, añadir otros, o borrarlos.


### Modelo
![Mod_Dominio_SistCursos-Original drawio](https://github.com/user-attachments/assets/b38fddc2-964b-4104-ad29-ca6f1ec0c0a6)

Link al diagrama: https://drive.google.com/file/d/1AzzSHU7jsQmI2H_68sejpJ69oS2_mPgp/view?usp=sharing

## Alcance Funcional 

### Alcance Mínimo

|Req|Detalle|
|:-|:-|
|CRUD |1. CRUD Alumno<br>2. CRUD Docente<br>3. CRUD Aula<br>4. CRUD Curso<br>5. CRUD Taller<br>|
|CRUD dependiente|1. CRUD Taller {depende de} CRUD Curso<br>|
|Listado<br>+<br>detalle| 1. Listado de cursos ordenado por fecha de comienzo, muestra nombre y capacidad del curso => detalle CRUD Curso<br> 2. Listado de cursos a los que se inscribio un alumno, ordenado por fecha de inicio del curso, muestra nombre de curso, fecha inicio y fin del curso, nombre del usuario y fecha de inscripcion => detalle muestra datos de la inscripcion, del usuario y del curso|
|CUU/Epic|1. Registrar inscripcion a un curso<br>2. Registrar inscripcion a un taller|


### Alcance Adicional 

|Req|Detalle|
|:-|:-|
|CUU/Epic|1. Cancelar inscripcion a un curso<br>2. Cancelar inscripcion a un taller|
