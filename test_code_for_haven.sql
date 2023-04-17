SELECT
	COUNT(code) AS "number_of_codes",
	"type"
FROM industrycode
GROUP BY "type";

SELECT 
	COUNT(*) AS "number_of_opps",
	i."type" 
FROM opportunity o
JOIN industrycode i 
	ON o.id = i.id
GROUP BY i."type";

SELECT description
FROM opportunity o
LIMIT 500;

SELECT *
FROM keyword k;

SELECT COUNT(*)
FROM opportunity o
WHERE status = 'Published';

SELECT *
FROM opportunity o
ORDER BY RANDOM()
LIMIT 10;

SELECT 
    COUNT(DISTINCT id) AS total_count, 
    COUNT(DISTINCT DATE(created)) AS distinct_days,
    COUNT(DISTINCT id) / COUNT(DISTINCT DATE(created)) AS average_count
FROM opportunity;