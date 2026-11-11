# Modelado Estructural y Diagramas de Arquitectura UML

**Proyecto:** Sistema de Gestión de Ventas e Inventario (SGVI)  
**Responsable:** Cristian Maldonado | **Fecha:** 2026-11-08

> El modelado de comportamiento (casos de uso y secuencia) se encuentra en las secciones 5 y 6 de `SRS_IEEE830.md`. Este documento presenta el modelado estructural, que se traduce en el esquema de `database/schema.sql`.

## 1. Diagrama de Clases UML (Sintaxis Mermaid)

```mermaid
classDiagram
    direction LR

    class Usuario {
        +int id
        +string nombre
        +string email
        +string password_hash
        +Rol rol
        +bool activo
        +autenticar(email, password) bool
        +tiene_permiso(accion) bool
    }

    class Rol {
        <<enumeration>>
        ADMINISTRADOR
        EMPLEADO
        CLIENTE
    }

    class Categoria {
        +int id
        +string nombre
        +string descripcion
        +listar_productos() list
    }

    class Producto {
        +int id
        +string nombre
        +decimal precio
        +int existencias
        +int existencia_minima
        +hay_existencias(cantidad) bool
        +descontar(cantidad) void
        +incrementar(cantidad) void
        +requiere_reposicion() bool
    }

    class Cliente {
        +int id
        +string nombre
        +string telefono
        +string email
        +historial_compras() list
    }

    class Venta {
        +int id
        +datetime fecha
        +decimal total
        +agregar_detalle(producto, cantidad) void
        +calcular_total() decimal
        +confirmar() void
    }

    class DetalleVenta {
        +int cantidad
        +decimal precio_unitario
        +subtotal() decimal
    }

    class MovimientoInventario {
        +int id
        +TipoMovimiento tipo
        +int cantidad
        +datetime fecha
        +string motivo
        +aplicar() void
    }

    class TipoMovimiento {
        <<enumeration>>
        ENTRADA
        SALIDA
    }

    Usuario --> Rol
    MovimientoInventario --> TipoMovimiento
    Categoria "0..1" o-- "0..*" Producto : agrupa
    Cliente "0..1" -- "0..*" Venta : realiza
    Usuario "1" -- "0..*" Venta : registra
    Venta "1" *-- "1..*" DetalleVenta : contiene
    DetalleVenta "0..*" --> "1" Producto : refiere
    Producto "1" -- "0..*" MovimientoInventario : afecta
    Usuario "1" -- "0..*" MovimientoInventario : registra
```

### 1.1 Relaciones y multiplicidades

| Relación | Tipo | Multiplicidad | Justificación |
| :--- | :--- | :--- | :--- |
| Categoría – Producto | Agregación | 0..1 a 0..* | Un producto puede pertenecer a una categoría; si la categoría se elimina, el producto sigue existiendo. |
| Venta – DetalleVenta | Composición | 1 a 1..* | Una venta tiene al menos un detalle; los detalles no existen sin su venta. |
| DetalleVenta – Producto | Asociación dirigida | 0..* a 1 | Cada detalle refiere exactamente a un producto. |
| Cliente – Venta | Asociación | 0..1 a 0..* | Una venta puede registrarse sin cliente identificado (venta de mostrador). |
| Usuario – Venta | Asociación | 1 a 0..* | Toda venta la registra un usuario. |
| Producto – MovimientoInventario | Asociación | 1 a 0..* | Cada movimiento afecta a un producto y queda como bitácora. |

## 2. Diagrama de Componentes y Despliegue (Mermaid)

### 2.1 Componentes (arquitectura en tres capas)

```mermaid
graph TD
    subgraph Presentacion ["Capa de Presentación"]
        UI["Plantillas HTML/Jinja2 + CSS + JavaScript"]
    end

    subgraph Aplicacion ["Capa de Lógica de Negocio - Flask"]
        Rutas["Controladores (Blueprints)"]
        Auth["Módulo de Autenticación y Roles"]
        Ventas["Módulo de Ventas"]
        Inventario["Módulo de Inventario"]
        Catalogo["Módulo de Productos y Clientes"]
        Reportes["Módulo de Reportes"]
    end

    subgraph Datos ["Capa de Datos"]
        Repo["Acceso a datos (conector MySQL)"]
        DB[("Base de Datos MySQL 8")]
    end

    UI -->|"HTTP: formularios y peticiones fetch"| Rutas
    Rutas --> Auth
    Rutas --> Ventas
    Rutas --> Inventario
    Rutas --> Catalogo
    Rutas --> Reportes
    Ventas --> Inventario
    Auth --> Repo
    Ventas --> Repo
    Inventario --> Repo
    Catalogo --> Repo
    Reportes --> Repo
    Repo -->|SQL| DB
```

### 2.2 Despliegue

```mermaid
graph LR
    subgraph PC_Usuario ["Nodo: Equipo del usuario"]
        Nav["Navegador web (Chrome / Edge / Firefox)"]
    end

    subgraph Servidor ["Nodo: Servidor del negocio (equipo local)"]
        App["Aplicación Flask (servidor WSGI)"]
        MySQL[("MySQL Server 8")]
    end

    Nav -->|"HTTP/HTTPS - puerto 5000"| App
    App -->|"TCP 3306"| MySQL
```

El alcance inicial considera un despliegue local en un solo equipo del negocio (sin nube y sin múltiples sucursales, de acuerdo con las exclusiones de `SRS_IEEE830.md`).
