# Resumen de actividades de desarrollo — Adivine la Palabra

Descripción, en orden, de las actividades realizadas durante el desarrollo de la
aplicación.

---

## 1. Configuración del entorno de desarrollo

- Se creó el proyecto de frontend con React usando Vite.
- Se incorporó Tailwind CSS para los estilos.
- Se configuró el entorno para que el frontend (servidor de desarrollo de Vite)
  funcionara junto con XAMPP (Apache y MySQL), que aloja el backend en PHP.
- Se hicieron pruebas iniciales de React para familiarizarse con los
  componentes, el estado y el renderizado.

## 2. Login y registro

- Se armó la interfaz del formulario de inicio de sesión.
- Se creó la base de datos y la tabla de usuarios.
- Se desarrollaron los endpoints de PHP para el registro y el inicio de sesión,
  incluyendo el guardado de la contraseña de forma hasheada.
- Se conectó el frontend con el backend mediante AJAX (fetch).
- Se resolvió la comunicación entre frontend y backend (configuración de CORS).
- Se agregó la opción de "recordar usuario".
- Se dejó el login y el registro completamente funcionales.

## 3. Pantalla de juego y tablero

- Se diseñó primero la parte visual: la pantalla de selección de partida
  (dificultad y tiempo) y el tablero con la palabra enmascarada, el ingreso de
  letras y la información de la partida.
- Se desarrolló luego el backend del juego: la elección de una palabra al azar
  según la dificultad, y la lógica de adivinar letras, mostrar pistas y calcular
  el puntaje.
- Se unieron el frontend y el backend para que el tablero reflejara el estado
  real de la partida.
- Se manejó el estado de la partida del lado del servidor mediante sesiones.

## 4. Fin de la partida y resultados

- Se implementó la detección del fin de la partida (palabra completada) y el
  cálculo del resultado: ganar, perder o empatar, con el puntaje multiplicado
  según la dificultad.
- Se desarrolló la pantalla de resultado.
- Se agregó el guardado de las partidas terminadas en la base de datos.
- Se implementó la tabla de ranking (top 10 de jugadores por puntaje acumulado).
- Se agregó la funcionalidad de abandonar la partida y la de perder por tiempo
  agotado, reutilizando el mismo cierre de partida.

## 5. Transición entre pantallas

- Se organizó la navegación entre las pantallas del juego dentro del componente
  contenedor, alternando entre la selección de partida y el tablero, y con un
  encabezado común.

## 6. Detalles estéticos y funcionales

- Se agregó la pantalla de victoria con una animación de confeti.
- Se incorporaron efectos de sonido al acertar o fallar una letra.
- Se diferenciaron por color las letras acertadas (verde) de las reveladas por
  una pista (amarillo).
- Se sumó un temporizador para las partidas con tiempo.
- Se mejoró la parte visual general: título, patrón de fondo, botones y estilos
  consistentes en toda la aplicación.

## 7. Pruebas, correcciones y limpieza

- Se probó el flujo completo del juego de punta a punta.
- Se corrigieron errores encontrados durante las pruebas.
- Se reforzó la seguridad, manejando la identidad del usuario del lado del
  servidor.
- Se revisó y limpió el código, eliminando duplicaciones y código sin uso.
- Se consolidó la configuración de la URL del backend en un único archivo.

## 8. Documentación y entrega

- Se preparó el script SQL para crear la base de datos y las tablas.
- Se redactó el manual del usuario con capturas de pantalla.
- Se redactó la guía de instalación.
- Se armó el listado de páginas de la aplicación.
- Se preparó el repositorio final con el código fuente y la documentación.
