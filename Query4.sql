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
    
/* Использование составных условий при соединении таблиц*/
SELECT 
    `students`.`name`, `groups`.`napr`, `groups`.`prof`
FROM
    students,
    `groups`
WHERE
    shifr_napr IN ('09.03.02' , '44.03.02')
        AND students.idgroups = `groups`.idgroups;
        
/* Испозьзование операторов сравнения при соединении*/
SELECT 
    `students`.`name`, `groups`.`napr`, `groups`.`prof`
FROM
    students,
    `groups`
WHERE
    shifr_napr > '09.03.02'
        AND students.idgroups < `groups`.idgroups;
        
/* Соединение таблицы с собой */
SELECT 
    `first`.`name`, `second`.`name`
FROM
    students `first`,
    students `second`
WHERE
    `first`.idgroups = `second`.idgroups
        AND `first`.`name` > `second`.`name`;
        
/* Поиск образцов */
SELECT 
    a.`name` as 'Группа 3.054.2.19', b.`name`as 'Группа 3.114.2.21', c.`name` as 'Группа 3.008.1.20'
FROM
    students a,
    students b,
    students c
WHERE
    a.idgroups = 2 AND b.idgroups = 3
        AND c.idgroups = 5;

/* Соединение таблиц, не входящих в результат запроса */
SELECT 
    `students`.`name`, `students`.`dob`
FROM
    students,
    `groups`
WHERE
    shifr_napr = '09.03.02'
        AND students.idgroups = `groups`.idgroups;
        
/* */