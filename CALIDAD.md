# MATRIZ DE ATRIBUTOS DE CALIDAD Y ESTÁNDARES (SOMMERVILLE CAP. 24)

## 1. Mantenibilidad (Maintainability)

- **Métrica Objetivo:** Máximo 15 líneas por función; complejidad ciclomática menor a 5.
- **Estándar de Codificación:** Cumplimiento del estándar PEP 8 mediante Flake8 con 0 advertencias de sintaxis.
- **Nomenclatura:** Identificadores significativos en español o inglés. Las variables utilizarán `snake_case` y las clases `PascalCase`.

## 2. Confiabilidad y Seguridad (Dependability & Security)

- **Validación de Entradas:** Manejo explícito de excepciones mediante bloques `try-except`, evitando capturas genéricas.
- **Control de Datos:** Exclusión de credenciales, contraseñas o tokens en el código fuente mediante `.gitignore`.

## 3. Eficiencia (Efficiency)

- **Uso de Memoria:** Liberación explícita de recursos y uso de estructuras de datos adecuadas según las necesidades del sistema.

## 4. Aceptabilidad (Acceptability)

- **Documentación de Funciones:** Todo método público deberá incluir un docstring explicativo breve sobre sus parámetros y retornos.