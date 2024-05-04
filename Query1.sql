SELECT 
    `pnamedisc` AS 'Полное наименование дисциплины'
FROM
    `discipl`;
    
SELECT DISTINCT
    `napr` AS 
    'Направление подготовки'
FROM
    `groups`;
    
SELECT 
    *
FROM
    `discipl`
WHERE
    `iddiscipl` = 5;
    
SELECT 
    `name`, `dob`
FROM
    `students`
WHERE
    ((`idgroups` = 5 OR `idgroups` = 3)
        AND `docum` = 0)
        OR `idgroups` IS NULL;
 /*Выводим Имя и дату рождения из таблицы студентов если айди группы 5 или 3 и докуметов при этом нет
или группа не определена/*