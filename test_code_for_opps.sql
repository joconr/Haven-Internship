SELECT *
FROM 10construction c;

SELECT 
	AVG(descTokens) AS AvgDescTokens,
	AVG(keywordTokens) AS AvgKeywordTokens,
	(AVG(keywordTokens) + AVG(descTokens)) AS TotalAvgToken,
	ROUND(((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002), 4) AS AvgOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 100, 2) AS 100DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 300, 2) AS 300DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 500, 2) AS 500DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 1000, 2) AS 1000DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 3000, 2) AS 3000DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 5000, 2) AS 5000DailyOppCost,
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 10000, 2) AS 10000DailyOppCost,
	-- 727 Opportunities were created on March 22nd according to the analysis group on Preset.io
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 727, 2) AS March22OppCost,
	-- 11,000 total open opportunities on Haven DB
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 11000, 2) AS OpenOppCost,
	-- Average opportunities created per day = 610
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 610, 2) AS AvgDailyOppCost,
	-- Average cost to run on the entire DB for all opportunities regardless of status
	ROUND((((AVG(keywordTokens) + AVG(descTokens)) / 1000 * 0.002)) * 90330, 2) AS AvgTotalDBCost
FROM 10construction;

SELECT *
FROM opportunity o;

