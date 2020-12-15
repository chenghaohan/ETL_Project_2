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

SELECT * FROM can_cases;