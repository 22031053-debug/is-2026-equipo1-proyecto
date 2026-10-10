# Historias de Usuario — Sistema de Gestión de Ventas e Inventario (SGVI)

## HU-01. Inicio de sesión

**Como** administrador o empleado,  
**quiero** iniciar sesión con mis credenciales,  
**para** acceder a las funciones autorizadas del sistema.

- **Prioridad:** Alta
- **Estimación:** 5 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Inicio de sesión exitoso
Dado que el usuario tiene credenciales válidas
Cuando ingresa su usuario y contraseña
Entonces el sistema permite el acceso correspondiente
```

```gherkin
Escenario: Credenciales incorrectas
Dado que el usuario ingresa credenciales inválidas
Cuando intenta iniciar sesión
Entonces el sistema muestra un mensaje de error
```

## HU-02. Registrar productos

**Como** administrador,  
**quiero** registrar productos con su nombre, precio y existencias,  
**para** mantener actualizado el catálogo del negocio.

- **Prioridad:** Alta
- **Estimación:** 5 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Registro válido
Dado que los datos del producto son correctos
Cuando el administrador guarda el producto
Entonces el sistema registra el producto en el catálogo
```

```gherkin
Escenario: Datos incompletos
Dado que falta un dato obligatorio del producto
Cuando el administrador intenta guardarlo
Entonces el sistema solicita completar la información
```

## HU-03. Registrar clientes

**Como** empleado,  
**quiero** registrar los datos de los clientes,  
**para** relacionarlos con las ventas realizadas.

- **Prioridad:** Media
- **Estimación:** 3 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Registro de cliente
Dado que se proporcionan los datos obligatorios
Cuando el empleado guarda al cliente
Entonces el sistema registra sus datos
```

```gherkin
Escenario: Datos obligatorios faltantes
Dado que falta información requerida
Cuando el empleado intenta guardar al cliente
Entonces el sistema informa qué datos debe completar
```

## HU-04. Registrar ventas

**Como** empleado,  
**quiero** registrar las ventas de productos,  
**para** mantener un historial de las operaciones comerciales.

- **Prioridad:** Alta
- **Estimación:** 8 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Venta con existencias suficientes
Dado que el producto tiene existencias suficientes
Cuando el empleado registra la venta
Entonces el sistema guarda la operación y actualiza las existencias
```

```gherkin
Escenario: Venta con existencias insuficientes
Dado que el producto no tiene existencias suficientes
Cuando el empleado intenta registrar la venta
Entonces el sistema rechaza la operación e informa el motivo
```

## HU-05. Controlar entradas y salidas de inventario

**Como** administrador,  
**quiero** registrar entradas y salidas de productos,  
**para** mantener actualizado el inventario.

- **Prioridad:** Alta
- **Estimación:** 5 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Entrada de productos
Dado que se reciben unidades de un producto registrado
Cuando el administrador registra la entrada
Entonces el sistema aumenta las existencias
```

```gherkin
Escenario: Salida mayor a las existencias
Dado que la cantidad solicitada supera las existencias disponibles
Cuando el administrador registra la salida
Entonces el sistema rechaza el movimiento
```

## HU-06. Consultar reportes de ventas e inventario

**Como** administrador,  
**quiero** consultar reportes de ventas y existencias,  
**para** identificar productos con mayor demanda y productos con bajo inventario.

- **Prioridad:** Media
- **Estimación:** 5 puntos Fibonacci
- **Criterios de aceptación:**

```gherkin
Escenario: Consultar reporte de ventas
Dado que existen ventas registradas
Cuando el administrador solicita el reporte
Entonces el sistema muestra un resumen de las ventas
```

```gherkin
Escenario: Identificar productos con bajo inventario
Dado que existen productos con pocas existencias
Cuando el administrador consulta el inventario
Entonces el sistema identifica los productos que requieren reposición
```

## Consideraciones de estimación

Los puntos Fibonacci representan la complejidad relativa estimada de cada historia. Las prioridades se asignan según la importancia de las funcionalidades para el SGVI.

Las historias se consideran propuestas iniciales y deberán revisarse antes de incorporarse al Sprint 1.