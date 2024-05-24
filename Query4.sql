/* Декартово произведение таблиц */
SELECT 
    *
FROM
    students,
    `groups`;
/* Соединение таблиц по общему знгачению */
SELECT 
    `name`, napr, prof
FROM
    students,
    `groups`
WHERE
    students.idgroups = `groups`.idgroups;
/* Альтернативная форма соединения таблиц с использованием общих полей (USING()) */
SELECT 
    `name`, napr, prof
FROM
    students
        INNER JOIN
    `groups` USING (idgroups);
/* Соединение таблиц "слева" */
SELECT 
    `name`, napr, prof
FROM
    students
        LEFT JOIN
    `groups` USING (idgroups);
/* Соединение таблиц "справа" */
SELECT 
    `name`, gr
FROM
    students
        RIGHT JOIN
    `groups` USING (idgroups)
ORDER BY `name`;

SELECT 
    `name`, gr
FROM
    students
        CROSS JOIN
    `groups` USING (idgroups)
ORDER BY `name`;
/* Еще одна форма соединения таблиц */
SELECT 
    `name`, napr, prof
FROM
    students
        JOIN
    `groups` ON (students.idgroups = `groups`.idgroups)
WHERE
    napr LIKE 'И%';