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

SELECT *
FROM gpt_description gd;

SELECT *
FROM gpt_keyword gk;

DESCRIBE gpt_keyword;

DESCRIBE gpt_description;

CREATE TABLE gpt_keyword (
  KeywordID INT AUTO_INCREMENT PRIMARY KEY,
  Keyword VARCHAR(255) NOT NULL,
  TokensUsed INT,
  id INT,
  CreatedOn DATETIME,
  UpdatedOn DATETIME,
  FOREIGN KEY (id) REFERENCES opportunity(id)
);

CREATE TABLE gpt_description (
  DescriptionID INT AUTO_INCREMENT PRIMARY KEY,
  Description VARCHAR(255),
  TokensUsed INT,
  id INT,
  CreatedOn DATETIME,
  UpdatedOn DATETIME,
  FOREIGN KEY (id) REFERENCES opportunity(id)
);

SELECT *
FROM keyword k;

SELECT id, description, gpt_description, gpt_description_token, gpt_keyword_token
FROM opportunity o
WHERE o.ID IN (73810, 77956, 24642, 46126, 62654, 9930, 46600, 55576, 20691, 58681);

SELECT *
FROM opportunity_keyword ok;
