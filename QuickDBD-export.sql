-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CNN_News" (
    "News_ID" INT   NOT NULL,
    "Date" DATE   NOT NULL,
    "News_Event" VARCHAR(300)   NOT NULL,
    CONSTRAINT "pk_CNN_News" PRIMARY KEY (
        "News_ID"
     )
);

CREATE TABLE "Global_Cases" (
    "Date" DATE   NOT NULL,
    "Country_Name" VARCHAR(300)   NOT NULL,
    "No_Cases" INT   NOT NULL,
    CONSTRAINT "pk_Global_Cases" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "CAN_Cases" (
    "Date" DATE   NOT NULL,
    "Province_Name" VARCHAR(300)   NOT NULL,
    "No_Cases" INT   NOT NULL,
    CONSTRAINT "pk_CAN_Cases" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "CAN_Demo" (
    "Age_Groups" VARCHAR(300)   NOT NULL,
    "Male_Cases" INT   NOT NULL,
    "Female_Cases" INT   NOT NULL,
    "Male_Hospitalization" INT   NOT NULL,
    "Female_Hospitalization" INT   NOT NULL,
    "Male_ICU" INT   NOT NULL,
    "Female_ICU" INT   NOT NULL,
    "Male_Deaths" INT   NOT NULL,
    "Female_Deaths" INT   NOT NULL,
    CONSTRAINT "pk_CAN_Demo" PRIMARY KEY (
        "Age_Groups"
     )
);

CREATE TABLE "stock_prices" (
    "date" DATE   NOT NULL,
    "zoom" FLOAT   NOT NULL,
    "slack" FLOAT   NOT NULL,
    "cisco" FLOAT   NOT NULL,
    "shopify" FLOAT   NOT NULL,
    CONSTRAINT "pk_stock_prices" PRIMARY KEY (
        "date"
     )
);

CREATE TABLE "CERB" (
    "provinces" VARCHAR(100)   NOT NULL,
    "female_gender_number" INT   NOT NULL,
    "male_gender_number" INT   NOT NULL,
    "gender_diverse_number" INT   NOT NULL,
    "total_number" INT   NOT NULL,
    CONSTRAINT "pk_CERB" PRIMARY KEY (
        "provinces"
     )
);

CREATE TABLE "Unemployment" (
    "Province_Name" VARCHAR(300)   NOT NULL,
    "Year-Month" DATE   NOT NULL,
    "Unemployment_index" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_Unemployment" PRIMARY KEY (
        "Province_Name"
     )
);

ALTER TABLE "CNN_News" ADD CONSTRAINT "fk_CNN_News_Date" FOREIGN KEY("Date")
REFERENCES "Global_Cases" ("Date");

ALTER TABLE "Global_Cases" ADD CONSTRAINT "fk_Global_Cases_Date" FOREIGN KEY("Date")
REFERENCES "CAN_Cases" ("Date");

ALTER TABLE "CAN_Cases" ADD CONSTRAINT "fk_CAN_Cases_Date" FOREIGN KEY("Date")
REFERENCES "CNN_News" ("Date");

ALTER TABLE "CAN_Cases" ADD CONSTRAINT "fk_CAN_Cases_Province_Name" FOREIGN KEY("Province_Name")
REFERENCES "Unemployment" ("Province_Name");

ALTER TABLE "stock_prices" ADD CONSTRAINT "fk_stock_prices_date" FOREIGN KEY("date")
REFERENCES "CNN_News" ("Date");

ALTER TABLE "Unemployment" ADD CONSTRAINT "fk_Unemployment_Province_Name" FOREIGN KEY("Province_Name")
REFERENCES "CERB" ("provinces");

