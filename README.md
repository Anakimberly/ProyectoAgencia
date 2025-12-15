# 🏢 Sistema de Gestión de Agencia

Sistema completo de gestión para agencias que incluye administración de personas, aportaciones, cargos y estatus.

## 📋 Características

- ✅ **Gestión de Personas**: CRUD completo (Crear, Leer, Actualizar, Eliminar)
- ✅ **Gestión de Aportaciones**: Seguimiento de contribuciones anuales
- ✅ **Gestión de Cargos**: Asignación de roles y responsabilidades
- ✅ **Sistema de Estatus**: Control de estados de personas
- ✅ **Interfaz Moderna**: Diseño responsive con Vue.js
- ✅ **API RESTful**: Backend con Node.js y Express
- ✅ **Base de Datos MySQL**: Almacenamiento robusto y confiable

## 🛠️ Tecnologías

### Frontend
- **Vue.js 3** - Framework progresivo de JavaScript
- **Vite** - Build tool rápido
- **CSS moderno** - Diseño con gradientes y animaciones

### Backend
- **Node.js** - Runtime de JavaScript
- **Express.js** - Framework web minimalista
- **MySQL2** - Cliente MySQL para Node.js
- **CORS** - Manejo de peticiones entre dominios

### Base de Datos
- **MySQL 8.0+** - Sistema de gestión de base de datos

## 🚀 Instalación

### Requisitos Previos

- Node.js 16+ instalado
- MySQL 8.0+ instalado y corriendo
- MySQL Workbench (opcional, para gestión visual)

### 1. Clonar/Descargar el Proyecto

```bash
cd C:\Users\Usuario\Documents\SistemaAgencia
```

### 2. Configurar Base de Datos

1. Abre MySQL Workbench
2. Ejecuta el script `database/schema.sql` para crear las tablas
3. Verifica que la base de datos se creó correctamente:

```sql
SHOW DATABASES;
USE mydb;
SHOW TABLES;
```

### 3. Configurar Backend

```bash
# Ir a la carpeta del backend
cd backend

# Instalar dependencias
npm install

# Editar server.js y configurar la conexión a BD
# Cambiar el nombre de la base de datos si es necesario
```

**Archivo: `backend/server.js` (línea 14)**
```javascript
const dbConfig = {
  host: 'localhost',
  user: 'root',
  password: '', // Agregar contraseña si tienes
  database: 'mydb', // Cambiar por el nombre de tu BD
  port: 3306
};
```

### 4. Configurar Frontend

```bash
# Ir a la carpeta del frontend
cd ../frontend

# Instalar dependencias
npm install
```

## ▶️ Ejecutar la Aplicación

### Iniciar Backend

```bash
cd backend
npm start
```

El backend estará disponible en: `http://localhost:4000`

### Iniciar Frontend

En otra terminal:

```bash
cd frontend
npm run dev
```

El frontend estará disponible en: `http://localhost:5173`

### Verificar Conexión

Abre tu navegador y visita:
- Frontend: `http://localhost:5173`
- Health Check: `http://localhost:4000/api/health`

## 📡 API Endpoints

### Personae (Personas)

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/personae` | Obtener todas las personas |
| GET | `/api/personae/:id` | Obtener persona por ID |
| POST | `/api/personae` | Crear nueva persona |
| PUT | `/api/personae/:id` | Actualizar persona |
| DELETE | `/api/personae/:id` | Eliminar persona |

### Aportaciones

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/aportaciones` | Obtener todas las aportaciones |
| GET | `/api/aportaciones/persona/:id` | Obtener aportaciones de una persona |
| POST | `/api/aportaciones` | Crear nueva aportación |
| PUT | `/api/aportaciones/:id` | Actualizar aportación |

### Cargos

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/cargos` | Obtener todos los cargos |
| POST | `/api/cargos` | Crear nuevo cargo |

### Estatus

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/estatus` | Obtener todos los estatus |

### Health Check

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/health` | Verificar conexión a BD |

## 📁 Estructura del Proyecto

```
SistemaAgencia/
├── backend/
│   ├── node_modules/
│   ├── package.json
│   └── server.js          # Servidor Express con todos los endpoints
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   └── PersonaeList.vue  # Componente principal de personas
│   │   ├── services/
│   │   │   └── api.js            # Servicios para llamadas API
│   │   ├── App.vue               # Componente raíz
│   │   └── main.js
│   ├── public/
│   ├── index.html
│   ├── package.json
│   └── vite.config.js
├── database/
│   └── schema.sql         # Script de creación de BD
├── .gitignore
└── README.md
```

## 🐛 Solución de Problemas

### Error: "Cannot connect to database"

**Solución:**
- Verifica que MySQL esté corriendo
- Verifica que el nombre de la base de datos en `server.js` sea correcto
- Verifica usuario y contraseña en `server.js`

### Error: "Table doesn't exist"

**Solución:**
- Ejecuta el script `database/schema.sql` en MySQL Workbench
- Verifica que las tablas existan con `SHOW TABLES;`

### Error: "CORS error"

**Solución:**
- Asegúrate de que el backend esté corriendo en el puerto 4000
- El backend ya tiene CORS habilitado con `app.use(cors())`

### Los 10k cambios en Git

**Solución:**
El proyecto incluye un `.gitignore` que excluye:
- `node_modules/`
- `dist/`
- Archivos de logs y temporales

Si el problema persiste, verifica que tu repositorio Git esté **solo** en la carpeta del proyecto, no en carpetas padre.

## 🎯 Próximos Pasos

- [ ] Agregar componente para gestión de aportaciones
- [ ] Agregar componente para gestión de cargos
- [ ] Implementar búsqueda y filtros
- [ ] Agregar validación de formularios
- [ ] Implementar paginación en tablas
- [ ] Agregar autenticación de usuarios
- [ ] Generar reportes en PDF/Excel

## 📄 Licencia

Este proyecto es de uso privado para gestión interna.

## 👥 Autor

Sistema desarrollado para gestión de agencias - 2025

---

**¿Necesitas ayuda?** Consulta la guía de configuración completa en `guia_configuracion.md`
