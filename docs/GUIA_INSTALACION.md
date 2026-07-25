# Guía de instalación — Adivine la Palabra

Esta guía explica cómo poner en funcionamiento la aplicación en un entorno de
desarrollo local.

---

## 1. Requisitos previos

- **XAMPP** (o equivalente) con **Apache** y **MySQL/MariaDB**.
- **Node.js** (versión 18 o superior) con **npm**.

---

## 2. Base de datos

1. Iniciar **Apache** y **MySQL** desde el panel de control de XAMPP.
2. Abrir **phpMyAdmin** (`http://localhost/phpmyadmin`).
3. Ir a la pestaña **Importar**.
4. Seleccionar el archivo `database/schema.sql` del proyecto.
5. Ejecutar la importación.

Esto crea la base `final_juego_ahorcado` con las tablas `usuarios`, `palabras`
y `partidas`, y carga las palabras de ejemplo con sus dificultades.

---

## 3. Backend (PHP)

El backend son los archivos `.php` de la carpeta `api/`. Apache tiene que poder
servirlos.

1. Copiar la carpeta del proyecto dentro del directorio que sirve Apache (por
   defecto `htdocs`, o el que se haya configurado).
2. Verificar que la ruta de la API sea accesible desde el navegador. Por
   ejemplo, si el proyecto quedó en `htdocs/miproyecto/finalJulio/FinalLab`, la
   API se accede en:
   `http://localhost/miproyecto/finalJulio/FinalLab/api/`

> **Importante — configuración de la ruta:** el frontend apunta a una URL fija
> del backend. Si la carpeta del proyecto no queda en la misma ruta, hay que
> actualizar **una sola línea** en el archivo `api/config.js`, para que coincida
> con la ubicación real donde Apache sirve la carpeta `api/`:
>
> ```js
> export const BASE_URL = "http://localhost/miproyecto/finalJulio/FinalLab/api";
> ```

---

## 4. Frontend (React)

1. Abrir una terminal en la carpeta del proyecto.
2. Instalar las dependencias:
   ```
   npm install
   ```
3. Levantar el servidor de desarrollo:
   ```
   npm run dev
   ```
4. Vite mostrará una dirección local (por defecto `http://localhost:5173`).
   Abrirla en el navegador.

> **Importante — CORS:** los archivos PHP autorizan el origen del frontend
> (`http://localhost:5173`) mediante las cabeceras `Access-Control-Allow-Origin`.
> Si Vite arranca en otro puerto, hay que actualizar ese valor en los endpoints
> PHP (`Login.php`, `Registro.php`, `IniciarPartida.php`, `Adivinar.php`,
> `FinalizarPartida.php`, `Ranking.php`).

---

## 5. Verificación

Con Apache, MySQL y el servidor de Vite corriendo, al abrir
`http://localhost:5173` debería aparecer la pantalla de inicio de sesión. A
partir de ahí ya se puede registrar un usuario y jugar.
