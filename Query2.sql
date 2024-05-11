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
    `name` BETWEEN 'М' AND 'П';
SELECT 
    *
FROM
    students
WHERE
    'name' LIKE 'M%';
SELECT 
    *
FROM
    students
WHERE
    'name' LIKE '%$%%' ESCAPE '$';
    
SELECT 
    *
FROM
    sutudents
WHERE
    'name' REGEXP '[н]';

SELECT 
    *
FROM
    students
WHERE
    'docum' IS NULL;
    
SELECT 
    *
FROM
    students
WHERE
    'docum' IS NOT NULL;
SELECT 
    *
FROM
    students
WHERE
    'docum' IS NOT NULL
        AND 'idgroups' IS NULL;
	
SELECT 
    COUNT(idstud)
FROM
    students;

SELECT 
    COUNT(DISTINCT idgroups)
FROM
    students;
    
SELECT 
    AVG(hours)
FROM
    discipl;

SELECT 
    MAX(hours)
FROM
    discipl;
    
SELECT 
    MIN(hours / 36)
FROM
    discipl;


SELECT 
    den_ned, COUNT(idgroups)
FROM
    sched
GROUP BY den_ned;


SELECT 
    'pnamedisc', count(pnamedisc)
FROM
    discipl
GROUP BY pnamedisc;

SELECT 
    den_ned, idgruops, COUNT(vid_z)
FROM
    sched
GROUP BY den_ned, idgroups;



SELECT 
    'pnamedisc' as 'наименование дисциплины', count(pnamedisc) as 'количетсво повотрений'
FROM
    discipl
where pnamedisc like '%базы данных%'
GROUP BY pnamedisc
having count(pnamedisc) > 1;

SELECT knamedisc, COUNT(*) AS num_disciplines
FROM discipl
WHERE hours > 50
GROUP BY knamedisc;
SELECT knamedisc, AVG(hours) AS avg_hours
FROM discipl
GROUP BY knamedisc
HAVING AVG(hours) > 50;
