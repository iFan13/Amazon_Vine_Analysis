--Deliverable 2.1
SELECT *
FROM vine_table
WHERE total_votes >= 20;

--Deliverable 2.2
SELECT *
FROM vine_table
WHERE total_votes >= 20 AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

--Deliverable 2.3
SELECT *
FROM vine_table
WHERE (total_votes >= 20 AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5) AND vine = 'Y';

--Deliverable 2.4
SELECT *
FROM vine_table
WHERE (total_votes >= 20 AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5) AND vine = 'N';

--Deliverable 2.5
SELECT
	COUNT(star_rating) AS "review_count",
	SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END) AS "5_star_count",
	CAST(SUM(CASE WHEN star_rating = 5 THEN 1 ELSE 0 END) AS FLOAT)/CAST(COUNT(star_rating) AS FLOAT)*100 AS "5_star_percentage"
FROM vine_table
WHERE (total_votes >= 20 AND CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5) AND vine = 'N'
GROUP BY vine
