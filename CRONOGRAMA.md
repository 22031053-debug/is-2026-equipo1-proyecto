
# Cronograma de Trabajo y Diagrama de Gantt - SGVI

**Proyecto:** Sistema de Gestión de Ventas e Inventario  
**Periodo:** Semanas 6 a 15 de 2026  
**Responsable:** Cristian Maldonado

## 1. Desglose de Trabajo (WBS)

| Código | Actividad | Entregable |
|---|---|---|
| 1.1 | Estudio de factibilidad | FACTIBILIDAD.md |
| 1.2 | Especificación de requisitos | SRS_IEEE830.md |
| 1.3 | Modelado UML de casos de uso y clases | Diagramas UML |
| 1.4 | Diseño de la base de datos | Modelo de datos |
| 2.1 | Codificación de módulos principales | Módulos del SGVI |
| 2.2 | Pruebas unitarias y de integración | Evidencias de pruebas |
| 2.3 | Despliegue y documentación técnica | Sistema y manuales |

## 2. Diagrama de Gantt

```mermaid
gantt
    title Planificación de Desarrollo del SGVI (Semanas 6 a 15)
    dateFormat YYYY-MM-DD
    axisFormat %W

    section Unidad 2: Análisis y Diseño
    Estudio de Factibilidad y Gantt :a1, 2026-10-14, 7d
    Especificación SRS IEEE 830 :a2, after a1, 14d
    Diagramado UML (Casos de Uso y Clases) :a3, after a2, 14d
    Diseño de Base de Datos :a4, after a3, 7d

    section Unidad 3: Construcción y Pruebas
    Codificación de Módulos Principales :b1, 2026-11-18, 14d
    Pruebas Unitarias y de Integración :b2, after b1, 7d
    Despliegue y Manuales Técnicos :b3, after b2, 7d
```

## 3. Matriz de Asignación de Responsabilidades (RACI)

Como el proyecto se desarrolla individualmente, una sola persona asume las responsabilidades de ejecución, aprobación y seguimiento. No se asignan responsabilidades ficticias a otros integrantes.

| Tarea / Fase | Cristian Maldonado |
|---|---|
| Factibilidad y SRS | Responsable (R), Aprobador (A) |
| Modelado UML | Responsable (R), Aprobador (A) |
| Diseño de Base de Datos | Responsable (R), Aprobador (A) |
| Codificación | Responsable (R), Aprobador (A) |
| Pruebas y documentación | Responsable (R), Aprobador (A) |

**Nota:** La matriz se adapta al trabajo individual. No sustituye una revisión independiente cuando esta sea requerida.
