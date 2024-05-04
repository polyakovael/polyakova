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