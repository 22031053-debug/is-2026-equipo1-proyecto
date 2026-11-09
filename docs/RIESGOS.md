# GESTIÓN DE RIESGOS DEL PROYECTO

## Fundamento: Modelo en Espiral de Boehm

De acuerdo con Sommerville (2011, Cap. 2), el Modelo en Espiral de Boehm organiza el proceso de software en ciclos y dedica en cada vuelta un sector explícito a la evaluación y reducción de riesgos: se identifican los riesgos, se analizan y se definen acciones para mitigarlos antes de continuar con el desarrollo y la planificación de la siguiente vuelta.

En el SGVI se aplica este principio mediante la siguiente matriz. Al inicio de cada incremento se revisan los riesgos, se actualiza su probabilidad e impacto y se ajustan las estrategias de mitigación.

## 1. Matriz de Evaluación de Riesgos

| ID | Descripción del Riesgo | Probabilidad | Impacto | Estrategia de Mitigación |
|---|---|---|---|---|
| R-01 | Requisitos incompletos o ambiguos | Media | Alto | Revisar y documentar los requisitos antes de iniciar el desarrollo de cada módulo. |
| R-02 | Errores en el diseño de la base de datos | Media | Alto | Revisar las entidades y relaciones antes de implementar la base de datos y realizar pruebas de integración tempranas. |
| R-03 | Retrasos en el desarrollo de funcionalidades | Media | Medio | Dividir el trabajo en tareas pequeñas y realizar seguimiento mediante el tablero Kanban. |
| R-04 | Errores en el registro de ventas o inventario | Media | Alto | Implementar validaciones y realizar pruebas funcionales sobre las operaciones principales. |
| R-05 | Pérdida o modificación incorrecta de información | Baja | Alto | Realizar respaldos de la base de datos y aplicar controles de acceso según el tipo de usuario. |
| R-06 | Problemas de integración entre los módulos | Media | Medio | Realizar pruebas de integración después de incorporar cada módulo al sistema. |

## 2. Seguimiento de Riesgos

Los riesgos serán revisados durante las diferentes etapas del desarrollo. La probabilidad y el impacto podrán actualizarse cuando cambien las condiciones del proyecto.

El tablero Kanban se utilizará para dar seguimiento a las actividades relacionadas con la prevención y mitigación de los riesgos identificados.