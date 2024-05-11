/* Оператор IN
*/
SELECT 
    *
FROM
    `groups`
WHERE
    SHIFR_NAPR IN ('09.03.02' , '44.03.01');
    
    
SELECT 
    *
FROM
    `students`
WHERE
    `dob` BETWEEN '2000-01-01' AND '2000-12-31'
        AND `dob` NOT IN ('2000-01-01' , '2000-12-04');
        
        
SELECT 
    *
FROM
    students
WHERE
    `name` BETWEEN 'М' AND 'Ц';
    
    
SELECT 
    *
FROM
    students
WHERE
    `name` LIKE '%мария%';
    
    
SELECT 
    *
FROM
    students
WHERE
    `name` REGEXP '[R]';
    
    
SELECT 
    *
FROM
    students
WHERE
    `name` LIKE '%$%' ESCAPE '$';
    
    
SELECT 
    *
FROM
    students
WHERE
    `name` LIKE '%@_%' ESCAPE '@';
    
SELECT 
    *
FROM
    students
WHERE
    `name` LIKE '%@@@%%' ESCAPE '@';
    
    
/* Оператор IS NULL
*/
SELECT 
    *
FROM
    students
WHERE
    `docum` IS NULL;
    
SELECT 
    *
FROM
    students
WHERE
    `docum` IS NOT NULL
        AND `idgroups` IS NULL;
/* Агрегатные функции COUNT(), SUM(), AVG(), MAX(), MIN()
*/
SELECT 
    COUNT(idstud)
FROM
    students;
    
    
SELECT 
    COUNT(ALL idgroups)
FROM
    students;
    
SELECT 
    COUNT(DISTINCT idgroups)
FROM
    students;
    
SELECT 
    SUM(`hours`/36)
FROM
    discipl;

SELECT 
    AVG(`hours`)
FROM
    discipl;
    
SELECT 
    MIN(`hours`)
FROM
    discipl;
    
/* Группировка значений, полученных при использовании агрегатных функций
*/
SELECT 
    den_ned, COUNT(idgroups)
FROM
    `sched`
GROUP BY den_ned;

SELECT 
    `pnamedisc`, AVG(hours)
FROM
    discipl
GROUP BY pnamedisc;

SELECT 
    den_ned, idgroups, COUNT(idvid_z)
FROM
    `sched`
GROUP BY den_ned, idgroups;

/* Самостоятельный запрос на группировку значений
*/
SELECT 
	num_ned,
    den_ned,
    idgroups,
    COUNT(num_par)
FROM
    `sched`
GROUP BY den_ned, idgroups, num_ned;