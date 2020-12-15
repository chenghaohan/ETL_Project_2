--- Create CNN News Timeline Table

CREATE TABLE cnn_news (
    news_id SERIAL PRIMARY KEY, 
    Date_dt DATE, 
    News_Event VARCHAR(300)
);

--- Create Global COVID Cases Table

CREATE TABLE global_cases (
    Date_dt DATE PRIMARY KEY, 
    Country_Name VARCHAR(300), 
    No_Cases INT
);

--- Create CAN COVID Cases Table by Province

CREATE TABLE can_cases (
    Date_dt DATE PRIMARY KEY, 
    Province VARCHAR(300), 
    No_Cases INT
);