# Listado de páginas — Adivine la Palabra

La aplicación es una **Single Page Application (SPA)**: el navegador carga una
sola página HTML (`index.html`) y React va mostrando distintas **pantallas**
según el estado, sin recargar. Por eso las "páginas principales" del frontend
son componentes de React que se renderizan uno u otro según en qué punto del
flujo esté el usuario.

El backend, por su parte, expone una serie de **endpoints PHP** que el frontend
consume por AJAX. Cada endpoint cumple una función puntual.

---

## 1. Pantallas del frontend (React)

| Componente | Función |
|---|---|
| `App.jsx` | Controlador principal. Decide qué pantalla mostrar según el estado de navegación (login, registro, juego, resultado). |
| `Login.jsx` | Pantalla de inicio de sesión. Permite ingresar usuario y contraseña, y recordar el usuario. |
| `Registro.jsx` | Pantalla de registro de un usuario nuevo (mail, usuario, contraseña). |
| `Juego.jsx` | Contenedor de la partida. Muestra el encabezado con el usuario y alterna entre la selección de partida y el tablero. |
| `SeleccionPartida.jsx` | Pantalla para elegir la dificultad y el tiempo antes de empezar a jugar. |
| `Tablero.jsx` | Pantalla de la partida en curso: palabra enmascarada, ingreso de letras, puntaje, tiempo e información de la partida. |
| `Resultado.jsx` | Pantalla final. Muestra el resultado (ganó/perdió/empató), el puntaje y el ranking. |
| `Ranking.jsx` | Tabla con el top 10 de jugadores por puntaje acumulado. Se muestra dentro de la pantalla de resultado. |

Componentes auxiliares (no son pantallas, dan soporte visual o reutilizable):

| Componente | Función |
|---|---|
| `Confeti.jsx` | Animación de confeti y aviones que aparece al ganar. |
| `PatronLetras.jsx` | Fondo decorativo con patrón de letras, presente en todas las pantallas. |
| `ui/Button.jsx`, `ui/Input.jsx` | Botón e input reutilizables con estilo común a toda la aplicación. |

---

## 2. Endpoints del backend (PHP)

| Endpoint | Función |
|---|---|
| `Login.php` | Valida usuario y contraseña; si son correctos, inicia la sesión guardando el id del usuario. |
| `Registro.php` | Crea un usuario nuevo, guardando la contraseña hasheada. |
| `IniciarPartida.php` | Elige una palabra al azar según la dificultad y arma el estado inicial de la partida en la sesión. |
| `Adivinar.php` | Procesa cada letra arriesgada: acierto o pista, actualiza el puntaje y determina si la partida terminó. |
| `FinalizarPartida.php` | Cierra una partida como perdida (por abandono o por tiempo agotado). |
| `Ranking.php` | Devuelve el top 10 de jugadores con más puntaje acumulado. |

---

## 3. Clases de apoyo del backend (PHP)

No son páginas ni endpoints, pero son las clases que dan soporte a la lógica y
el acceso a datos:

| Archivo | Función |
|---|---|
| `Db.php` | Establece la conexión con la base de datos MySQL. |
| `Usuario.php` | Clase `Usuario`. Maneja el registro y el inicio de sesión (incluyendo el hasheo de contraseñas). |
| `Palabra.php` | Clase `Palabra`. Obtiene una palabra al azar de la base según la dificultad. |
| `Partida.php` | Clase `Partida`. Guarda las partidas terminadas y arma la consulta del ranking. |
| `config.js` | Define la URL base del backend, usada por el frontend para consumir los endpoints. |
