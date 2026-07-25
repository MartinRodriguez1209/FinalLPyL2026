CREATE DATABASE IF NOT EXISTS final_juego_ahorcado CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE final_juego_ahorcado;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    mail VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE palabras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    palabra VARCHAR(100) NOT NULL,
    dificultad ENUM('baja', 'media', 'alta') NOT NULL
);

CREATE TABLE partidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    palabra VARCHAR(100) NOT NULL,
    dificultad ENUM('baja', 'media', 'alta') NOT NULL,
    puntaje_letras INT NOT NULL,
    puntaje_pistas INT NOT NULL,
    puntaje_acumulado INT NOT NULL,
    resultado ENUM('ganada', 'perdida', 'empatada') NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO palabras (palabra, dificultad) VALUES
('gato', 'baja'), ('luna', 'baja'), ('mesa', 'baja'), ('casa', 'baja'), ('pato', 'baja'),
('rosa', 'baja'), ('pez', 'baja'), ('sal', 'baja'), ('rio', 'baja'), ('pan', 'baja'),
('gaviota', 'media'), ('paloma', 'media'), ('ventana', 'media'), ('corbata', 'media'), ('helado', 'media'),
('camino', 'media'), ('planeta', 'media'), ('fabrica', 'media'), ('cosecha', 'media'), ('botella', 'media'),
('mariposa', 'media'), ('fotografia', 'alta'), ('computadora', 'alta'), ('periodista', 'alta'), ('biblioteca', 'alta'),
('submarino', 'alta'), ('diccionario', 'alta'), ('electronico', 'alta'), ('temperatura', 'alta'),
('sol', 'baja'), ('mar', 'baja'), ('luz', 'baja'), ('flor', 'baja'), ('nube', 'baja'),
('arbol', 'baja'), ('leon', 'baja'), ('vaca', 'baja'), ('pera', 'baja'), ('miel', 'baja'),
('dedo', 'baja'), ('mano', 'baja'), ('tren', 'baja'), ('gol', 'baja'), ('reloj', 'baja'),
('caballo', 'media'), ('zapato', 'media'), ('guitarra', 'media'), ('naranja', 'media'), ('pescado', 'media'),
('sombrero', 'media'), ('cuaderno', 'media'), ('pantera', 'media'), ('semilla', 'media'), ('tortuga', 'media'),
('caramelo', 'media'), ('estrella', 'media'), ('pelicano', 'media'), ('bandera', 'media'), ('mochila', 'media'),
('astronauta', 'alta'), ('murcielago', 'alta'), ('telescopio', 'alta'), ('helicoptero', 'alta'), ('universidad', 'alta'),
('matematica', 'alta'), ('arquitecto', 'alta'), ('bicicleta', 'alta'), ('refrigerador', 'alta'), ('rompecabezas', 'alta'),
('calculadora', 'alta'), ('experimento', 'alta'), ('microscopio', 'alta'), ('primavera', 'alta'), ('carpintero', 'alta');
