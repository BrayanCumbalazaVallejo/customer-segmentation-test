/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 01: Número de estudiantes por carrera.                                  |
 * ------------------------------------------------------------------------------------
 *
 * Se agrupan los registros de la tabla Estudiante por la columna CARRERA
 * y se cuenta el número de estudiantes (ID) para cada una.
 *
 */
SELECT
    CARRERA,
    COUNT(ID) AS NUM_ESTUDIANTES
FROM
    Estudiante
GROUP BY
    CARRERA
ORDER BY
    NUM_ESTUDIANTES DESC;

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 02: Número de estudiantes por ciudad.                                   |
 * ------------------------------------------------------------------------------------
 *
 * Se unen las tablas Estudiante y Ciudad usando CODIGOCIUDAD.
 * Luego, se agrupa por el nombre de la ciudad y se cuenta el número
 * de estudiantes en cada una.
 *
 */
SELECT
    c.NOMBRECIUDAD,
    COUNT(e.ID) AS NUM_ESTUDIANTES
FROM
    Estudiante e
JOIN
    Ciudad c ON e.CODIGOCIUDAD = c.CODIGOCIUDAD
GROUP BY
    c.NOMBRECIUDAD
ORDER BY
    NUM_ESTUDIANTES DESC;

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 03: Número de estudiantes por carrera y por ciudad.                     |
 * ------------------------------------------------------------------------------------
 *
 * Similar a la anterior, pero se agrupa tanto por carrera como por ciudad
 * para obtener un desglose más detallado.
 *
 */
SELECT
    e.CARRERA,
    c.NOMBRECIUDAD,
    COUNT(e.ID) AS NUM_ESTUDIANTES
FROM
    Estudiante e
JOIN
    Ciudad c ON e.CODIGOCIUDAD = c.CODIGOCIUDAD
GROUP BY
    e.CARRERA,
    c.NOMBRECIUDAD
ORDER BY
    e.CARRERA,
    NUM_ESTUDIANTES DESC;

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 04: Número de estudiantes que ingresaron por año.                       |
 * ------------------------------------------------------------------------------------
 *
 * Se extrae el año de la columna FECHAINGRESO y se agrupan los registros
 * por este valor para contar cuántos estudiantes ingresaron cada año.
 * La función para extraer el año puede variar según el motor de base de datos
 * (e.g., YEAR() en MySQL, STRFTIME('%Y', ...) en SQLite, EXTRACT(YEAR FROM ...) en PostgreSQL).
 *
 */
-- Para SQLite / PostgreSQL
SELECT
    STRFTIME('%Y', FECHAINGRESO) AS ANIO_INGRESO,
    COUNT(ID) AS NUM_ESTUDIANTES
FROM
    Estudiante
GROUP BY
    ANIO_INGRESO
ORDER BY
    ANIO_INGRESO DESC;

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 05: Listado de estudiantes que no tienen teléfono.                      |
 * ------------------------------------------------------------------------------------
 *
 * Se filtran los estudiantes donde el campo TELEFONO es nulo o está vacío.
 *
 */
SELECT
    NOMBREAPELLIDO,
    CORREO,
    CARRERA
FROM
    Estudiante
WHERE
    TELEFONO IS NULL OR TELEFONO = '';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 06: Listado de estudiantes que no tienen correo.                        |
 * ------------------------------------------------------------------------------------
 *
 * Se filtran los estudiantes donde el campo CORREO es nulo o está vacío.
 *
 */
SELECT
    NOMBREAPELLIDO,
    TELEFONO,
    CARRERA
FROM
    Estudiante
WHERE
    CORREO IS NULL OR CORREO = '';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 07: Listado de estudiantes que no tienen ni teléfono ni correo.          |
 * ------------------------------------------------------------------------------------
 *
 * Se aplica una doble condición para encontrar estudiantes a quienes les faltan
 * ambos datos de contacto.
 *
 */
SELECT
    NOMBREAPELLIDO,
    CARRERA
FROM
    Estudiante
WHERE
    (TELEFONO IS NULL OR TELEFONO = '') AND (CORREO IS NULL OR CORREO = '');

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 08: Listado de los estudiantes de la carrera de "Ingeniería de sistemas".|
 * ------------------------------------------------------------------------------------
 *
 * Se filtran los registros de la tabla Estudiante por el valor exacto en la
 * columna CARRERA.
 *
 */
SELECT
    NOMBREAPELLIDO,
    CORREO,
    TELEFONO
FROM
    Estudiante
WHERE
    CARRERA = 'Ingeniería de sistemas';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 09: Listado de los estudiantes que son de la ciudad de "Pasto".         |
 * ------------------------------------------------------------------------------------
 *
 * Se unen las tablas y se filtra por el nombre de la ciudad "Pasto".
 *
 */
SELECT
    e.NOMBREAPELLIDO,
    e.CARRERA,
    e.CORREO
FROM
    Estudiante e
JOIN
    Ciudad c ON e.CODIGOCIUDAD = c.CODIGOCIUDAD
WHERE
    c.NOMBRECIUDAD = 'Pasto';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 10: Listado de estudiantes de "Ingeniería de sistemas" de "Pasto".      |
 * ------------------------------------------------------------------------------------
 *
 * Se combinan las condiciones de las dos preguntas anteriores para un
 * filtro más específico.
 *
 */
SELECT
    e.NOMBREAPELLIDO,
    e.CORREO,
    e.FECHAINGRESO
FROM
    Estudiante e
JOIN
    Ciudad c ON e.CODIGOCIUDAD = c.CODIGOCIUDAD
WHERE
    e.CARRERA = 'Ingeniería de sistemas' AND c.NOMBRECIUDAD = 'Pasto';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 11: Listado de los estudiantes que ingresaron en el año 2019.           |
 * ------------------------------------------------------------------------------------
 *
 * Se filtra por el año extraído de la fecha de ingreso.
 *
 */
-- Para SQLite / PostgreSQL
SELECT
    NOMBREAPELLIDO,
    CARRERA,
    FECHAINGRESO
FROM
    Estudiante
WHERE
    STRFTIME('%Y', FECHAINGRESO) = '2019';

/*
 * ------------------------------------------------------------------------------------
 * | PREGUNTA 12: Listado de estudiantes que ingresaron en marzo (cualquier año).     |
 * ------------------------------------------------------------------------------------
 *
 * Se filtra por el mes extraído de la fecha de ingreso ('03' para marzo).
 *
 */
-- Para SQLite / PostgreSQL
SELECT
    NOMBREAPELLIDO,
    CARRERA,
    FECHAINGRESO
FROM
    Estudiante
WHERE
    STRFTIME('%m', FECHAINGRESO) = '03';