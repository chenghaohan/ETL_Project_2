--- Create CNN News Timeline Table
DROP TABLE IF EXISTS cnn_news;

CREATE TABLE cnn_news (
    news_id SERIAL PRIMARY KEY, 
    Date_dt DATE, 
    News_Event VARCHAR(300)
);

--- Create Global COVID Cases Table
DROP TABLE IF EXISTS global_cases;

CREATE TABLE global_cases (
    Date_dt DATE PRIMARY KEY, 
    Country_Name VARCHAR(300), 
    No_Cases INT
);

--- Create CAN COVID Cases Table by Province
DROP TABLE IF EXISTS can_cases;

CREATE TABLE can_cases (
    Date_dt TIMESTAMP PRIMARY KEY, 
    Province VARCHAR(300), 
    No_Cases INT
);

--- Create CAN COVID Canada Demographic Table
DROP TABLE IF EXISTS can_demo;

CREATE TABLE can_demo  (
	Age_Group VARCHAR(300),
	Male_Cases INT,
	Female_Cases INT,
	Male_Hospitalization INT,
	Female_Hospitalization INT,
	Male_to_ICU INT,
	Female_to_ICU INT,
	Male_Deaths INT,
	Female_Deaths INT
);


