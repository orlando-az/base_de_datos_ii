---INSERT INTO
--Espectadores (15 registros)
INSERT INTO espectador (nombre, correo, edad) VALUES
('Ana Martínez', 'ana@gmail.com', 25),
('Luis Torres', 'luis@gmail.com', 34),
('María López', 'maria@gmail.com', 19),
('Carlos Pérez', 'carlos@gmail.com', 42),
('Lucía Ramos', 'lucia@gmail.com', 28),
('Pedro Gutiérrez', 'pedro@gmail.com', 31),
('Sofía Morales', 'sofia@gmail.com', 23),
('Javier Luna', 'javier@gmail.com', 37),
('Claudia Ríos', 'claudia@gmail.com', 22),
('Eduardo Salazar', 'eduardo@gmail.com', 26),
('Verónica Núñez', 'vero@gmail.com', 30),
('Andrés Mejía', 'andres@gmail.com', 33),
('Gabriela Vargas', 'gabriela@gmail.com', 29),
('Martín Chávez', 'martin@gmail.com', 40),
('Daniela Pinto', 'daniela@gmail.com', 18);

--Salas (5 registros)
INSERT INTO sala (nombre, capacidad) VALUES
('Sala 1', 120),
('Sala 2', 80),
('Sala 3', 100),
('Sala 4', 60),
('Sala 5', 150);

--Películas (10 registros)
INSERT INTO pelicula (titulo, genero, duracion, clasificacion) VALUES
('El Viaje Estelar', 'Ciencia Ficción', 140, 'PG-13'),
('Amor de Verano', 'Romance', 95, 'PG'),
('Terror Nocturno', 'Terror', 110, 'R'),
('Risas sin Fin', 'Comedia', 100, 'PG-13'),
('La Guerra Final', 'Acción', 130, 'PG-13'),
('El Misterio del Lago', 'Suspenso', 115, 'PG-13'),
('Cazadores de Sombras', 'Fantasía', 125, 'PG'),
('Código Mortal', 'Thriller', 105, 'R'),
('Historias de Barrio', 'Drama', 98, 'PG'),
('Universo Alterno', 'Ciencia Ficción', 150, 'PG-13');

-- Funciones (20 funciones en distintos días y salas)
INSERT INTO funcion (id_pelicula, id_sala, fecha, hora) VALUES
(1, 1, '2025-07-08', '18:00'),
(2, 2, '2025-07-08', '20:00'),
(3, 3, '2025-07-08', '22:00'),
(4, 1, '2025-07-09', '16:00'),
(5, 2, '2025-07-09', '19:00'),
(6, 3, '2025-07-09', '21:00'),
(7, 4, '2025-07-10', '18:30'),
(8, 5, '2025-07-10', '20:30'),
(9, 1, '2025-07-11', '17:00'),
(10, 2, '2025-07-11', '19:00'),
(1, 3, '2025-07-11', '21:00'),
(2, 4, '2025-07-12', '16:00'),
(3, 5, '2025-07-12', '18:00'),
(4, 1, '2025-07-12', '20:00'),
(5, 2, '2025-07-13', '17:00'),
(6, 3, '2025-07-13', '19:00'),
(7, 4, '2025-07-13', '21:00'),
(8, 5, '2025-07-14', '18:00'),
(9, 1, '2025-07-14', '20:00'),
(10, 2, '2025-07-14', '22:00');

 --Boletos (40 registros aleatorios)
INSERT INTO boleto (id_funcion, id_espectador, precio) VALUES
(3, 7, 27.50),
(15, 1, 25.00),
(9, 12, 22.50),
(7, 3, 26.75),
(2, 6, 30.00),
(19, 9, 28.00),
(1, 10, 23.50),
(11, 4, 29.00),
(5, 13, 27.25),
(8, 2, 30.00),
(14, 8, 24.50),
(6, 14, 26.00),
(4, 5, 29.75),
(10, 11, 28.50),
(12, 15, 22.00),
(18, 7, 30.00),
(13, 1, 25.75),
(16, 9, 27.00),
(20, 12, 26.25),
(17, 3, 29.50),
(1, 6, 24.00),
(5, 10, 28.75),
(7, 11, 30.00),
(9, 14, 25.50),
(3, 4, 26.00),
(12, 2, 29.25),
(6, 8, 23.50),
(8, 15, 27.75),
(14, 5, 30.00),
(10, 7, 22.50),
(4, 13, 29.00),
(16, 9, 26.50),
(19, 1, 28.00),
(11, 3, 24.75),
(13, 6, 29.50),
(15, 12, 25.00),
(17, 8, 27.25),
(20, 14, 30.00),
(2, 10, 28.50);
