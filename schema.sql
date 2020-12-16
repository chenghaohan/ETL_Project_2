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

--- Create Stock Price Table in Tech Industry
DROP TABLE IF EXISTS stock_prices;

CREATE TABLE stock_prices (
    Date DATE PRIMARY KEY,
    Zoom FLOAT,
    Slack FLOAT,
    Cisco FLOAT,
    Shopify FLOAT,
);

--- Create CERB table by Province in Canada

DROP TABLE IF EXISTS CERB;

CREATE TABLE CERB(
    Provinces VARCHAR(100) PRIMARY KEY,
    Female_gender_Number INT,	
    Male_gender_Number INT,	
    Gender_diverse_Number INT,
    Total_Number INT
);
