SELECT c.class
FROM 
    (SELECT name 
     FROM student.score 
     ORDER BY score DESC 
     LIMIT 1, 1) s
JOIN 
    student.class c ON s.name = c.name;