# Reporte Metodológico — Sistema de Gestión de Ventas e Inventario (SGVI)

## 1. Caracterización del sistema

### 1.1 Dominio del problema

El Sistema de Gestión de Ventas e Inventario (SGVI) tiene como propósito organizar las operaciones básicas de un negocio relacionadas con el registro de productos, clientes, ventas y movimientos de inventario. También contempla la consulta de reportes para identificar productos con mayor demanda y artículos con existencias bajas.

### 1.2 Complejidad del sistema

El sistema presenta una complejidad moderada. Sus funcionalidades requieren relacionar productos, clientes, ventas y existencias. Es importante mantener la consistencia de los datos, validar las entradas y evitar que se registren ventas que superen las existencias disponibles.

### 1.3 Riesgos técnicos y operativos

Los principales riesgos identificados son:

- Registro de información incompleta o incorrecta.
- Diferencias entre las existencias registradas y los movimientos realizados.
- Errores al registrar ventas o actualizar el inventario.
- Defectos de software derivados de validaciones insuficientes.
- Cambios que generen conflictos o afecten el funcionamiento del sistema.

Para reducir estos riesgos se utilizarán validaciones de entrada, pruebas, control de versiones y revisiones de los cambios antes de integrarlos.

### 1.4 Experiencia técnica

El proyecto utilizará Visual Studio Code como entorno de trabajo, Python como lenguaje previsto para el desarrollo, Git para el control de versiones y GitHub para administrar el repositorio, los Issues, las ramas y los Pull Requests. Flake8 se utilizará para revisar el estilo y la calidad del código Python.

### 1.5 Participación del cliente

La participación del usuario final será importante para validar que las funciones correspondan con las necesidades del negocio. Se considerarán observaciones sobre el registro de productos, clientes, ventas y movimientos de inventario. Los criterios de aceptación permitirán comprobar que las funcionalidades cumplan con los resultados esperados.

## 2. Evaluación multicriterio de metodologías

Se comparan tres alternativas: el modelo Cascada/Espiral, Scrum/XP y un enfoque híbrido adaptado al proyecto.

| Criterio | Cascada/Espiral | Scrum/XP | Enfoque híbrido propuesto |
|---|---|---|---|
| Organización del trabajo | Fases definidas y ciclos de análisis de riesgos | Iteraciones cortas y backlog priorizado | Incrementos pequeños con planificación y seguimiento |
| Adaptación a cambios | Los cambios pueden requerir revisar fases anteriores | Los cambios se incorporan al backlog | Se permiten ajustes entre incrementos |
| Gestión de requisitos | Se documentan principalmente al inicio y se refinan según el modelo | Las historias de usuario y sus criterios se revisan continuamente | Se documentan historias y criterios de aceptación antes de cada incremento |
| Gestión de riesgos | El modelo Espiral enfatiza el análisis de riesgos | Se identifican problemas durante las iteraciones | Se registran riesgos y se verifican durante cada incremento |
| Calidad del software | Depende de las actividades de verificación definidas | XP promueve pruebas frecuentes y retroalimentación | Se combinan criterios de calidad, pruebas y revisión de cambios |
| Seguimiento | Avance por fases y entregables | Seguimiento por Sprint y backlog | Tablero Kanban, Issues y control de versiones |
| Adecuación al trabajo individual | Puede resultar rígido para cambios frecuentes | Requiere adaptar las ceremonias y responsabilidades | Permite organizar actividades de forma práctica y progresiva |

## 3. Justificación metodológica

Se propone utilizar un enfoque híbrido basado en el desarrollo incremental, la organización de tareas de Scrum y prácticas de calidad asociadas con XP.

Esta alternativa es adecuada para el SGVI porque permite dividir el sistema en funcionalidades pequeñas, como el inicio de sesión, el registro de productos y el registro de ventas. Cada funcionalidad puede documentarse, priorizarse y validarse antes de continuar con las siguientes.

Scrum aporta la organización mediante historias de usuario, prioridades, estimaciones y planificación del Sprint. XP aporta prácticas orientadas a la calidad, como las pruebas frecuentes y la validación de los criterios de aceptación.

El desarrollo incremental también permite incorporar mejoras sin tener que completar todas las funcionalidades antes de obtener resultados verificables.

La propuesta se relaciona con los principios de ingeniería de software descritos por Sommerville, especialmente la necesidad de seleccionar procesos adecuados al tipo de sistema, sus riesgos y las condiciones de desarrollo. La selección constituye una propuesta para este proyecto y podrá ajustarse conforme se definan los requisitos y se implementen las funcionalidades.

## 4. Proceso adaptado y artefactos

### 4.1 Fases del proceso

El proceso se organizará en las siguientes fases:

1. **Análisis de requisitos:** identificar las necesidades del sistema y documentarlas mediante historias de usuario con criterios de aceptación.
2. **Planificación:** priorizar las historias, estimar su esfuerzo y seleccionar las actividades del incremento.
3. **Diseño:** definir la estructura de las funcionalidades, los datos necesarios y las validaciones.
4. **Desarrollo incremental:** implementar las funcionalidades seleccionadas en cambios pequeños.
5. **Verificación y validación:** ejecutar pruebas, revisar los criterios de aceptación y realizar análisis estático con Flake8 cuando corresponda.
6. **Integración y documentación:** registrar los cambios mediante commits y Pull Requests, actualizar los documentos y mantener la rama principal estable.

### 4.2 Ciclos de trabajo

Se propone organizar el trabajo en ciclos de dos semanas. Esta duración es una planificación inicial para distribuir las actividades y revisar los resultados de cada incremento. La duración podrá modificarse según la complejidad de las historias y el avance del proyecto.

### 4.3 Artefactos del proyecto

| Artefacto | Propósito |
|---|---|
| `HISTORIAS_USUARIO.md` | Documentar las historias, prioridades, estimaciones y criterios de aceptación. |
| `SPRINT_PLANNING.md` | Definir el objetivo del Sprint y las historias seleccionadas. |
| `PARADIGMA.md` | Registrar el enfoque de trabajo, las herramientas y los procedimientos. |
| `CALIDAD.md` | Establecer atributos de calidad, métricas y convenciones. |
| `REPORTE_METODOLOGIA.md` | Consolidar el análisis y la justificación metodológica. |
| GitHub Issues y Projects | Organizar tareas y visualizar el estado del trabajo. |
| Pull Requests | Documentar los cambios propuestos antes de integrarlos a `main`. |

### 4.4 Matriz de responsabilidades

El proyecto se desarrolla de forma individual. Por ello, las responsabilidades se asignan a una sola persona, sin simular la participación de integrantes inexistentes.

| Actividad | Responsable |
|---|---|
| Análisis y priorización de requisitos | Cristian Maldonado |
| Planificación y seguimiento | Cristian Maldonado |
| Diseño y desarrollo | Cristian Maldonado |
| Pruebas y validación | Cristian Maldonado |
| Documentación y control de versiones | Cristian Maldonado |
| Revisión independiente por otra persona | Pendiente por disponibilidad de revisor |

Los roles de Product Owner, Scrum Master y desarrollo se consideran responsabilidades metodológicas que pueden adaptarse al trabajo individual. Esta organización no sustituye la retroalimentación independiente cuando sea posible obtenerla.

## 5. Calidad y gobernanza

### 5.1 Mantenibilidad

Se mantendrán funciones breves, con un objetivo de máximo 15 líneas por función y complejidad ciclomática menor a 5. Se utilizarán nombres significativos, variables en `snake_case` y clases en `PascalCase`. Flake8 se empleará para revisar el cumplimiento de PEP 8 y detectar problemas de estilo.

### 5.2 Confiabilidad y seguridad

Se validarán los datos de entrada y se manejarán las excepciones de forma explícita, evitando capturas genéricas. Las contraseñas, credenciales y tokens no deberán incluirse en el código fuente. Los archivos sensibles deberán excluirse mediante `.gitignore`.

### 5.3 Eficiencia

Se seleccionarán estructuras de datos adecuadas a cada operación y se liberarán los recursos utilizados cuando corresponda. Las decisiones de eficiencia se revisarán conforme se implementen las funcionalidades.

### 5.4 Aceptabilidad

Las funcionalidades deberán ser comprensibles y responder a las necesidades de los usuarios. Los métodos públicos incluirán docstrings breves que expliquen sus parámetros y valores de retorno. Los criterios de aceptación permitirán verificar los resultados esperados.

### 5.5 Gobernanza y control de cambios

La rama `main` se mantendrá como rama principal. Los cambios se desarrollarán en ramas con el formato `feature/nombre-del-cambio` y se integrarán mediante Pull Requests. Los commits utilizarán prefijos como `feat:`, `fix:`, `docs:`, `refactor:` y `test:`.

Antes de integrar los cambios se comprobará su contenido, la ausencia de conflictos y el cumplimiento de los estándares aplicables. Cuando el proyecto se desarrolle de manera individual, la revisión propia deberá distinguirse de una revisión independiente realizada por otra persona.

### 5.6 Relación con ISO/IEC 25010

La propuesta considera atributos de calidad relacionados con el modelo ISO/IEC 25010:

- **Mantenibilidad:** facilitar la comprensión, corrección y modificación del código.
- **Fiabilidad:** reducir errores mediante validaciones y pruebas.
- **Seguridad:** proteger credenciales y controlar el tratamiento de los datos.
- **Eficiencia del desempeño:** utilizar recursos de forma adecuada.
- **Usabilidad:** facilitar el uso de las funciones del sistema.
- **Adecuación funcional:** verificar que las funcionalidades respondan a los requisitos documentados.

Estos atributos orientan las decisiones de diseño y validación del SGVI. Su cumplimiento deberá comprobarse mediante pruebas y revisiones durante el desarrollo; no se considera demostrado únicamente por su inclusión en este reporte.

## Conclusión

El enfoque híbrido propuesto permite organizar el desarrollo del SGVI mediante incrementos, historias de usuario, planificación y controles de calidad. La combinación de documentación, GitHub Projects, Git,