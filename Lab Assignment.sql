/*Question 1*/
CREATE TABLE IF NOT EXISTS supplier(
    SUPP_ID INT NOT NULL,
    SUPP_NAME VARCHAR(50) NOT NULL,
    SUPP_CITY VARCHAR(50),
    SUPP_PHONE VARCHAR(10) NOT NULL,
    PRIMARY KEY (SUPP_ID)
);

CREATE TABLE IF NOT EXISTS customer(
    CUS_ID INT NOT NULL,
    CUS_NAME VARCHAR(20) NOT NULL,
    CUS_PHONE VARCHAR(10) NOT NULL,
    CUS_CITY VARCHAR(30) NOT NULL,
    CUS_GENDER CHAR,
    PRIMARY KEY (CUS_ID)
);

CREATE TABLE IF NOT EXISTS category(
    CAT_ID INT NOT NULL,
    CAT_NAME VARCHAR(20) NOT NULL,
    PRIMARY KEY (CAT_ID)
);

CREATE TABLE IF NOT EXISTS product(
    PROD_ID INT NOT NULL,
    PROD_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
    PROD_DESC VARCHAR(60),
    CAT_ID INT NOT NULL,
    PRIMARY KEY (PROD_ID),
    FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);

CREATE TABLE IF NOT EXISTS supplier_pricing(
    PRICING_ID INT NOT NULL,
    PROD_ID INT NOT NULL,
    SUPP_ID INT NOT NULL,
    SUPP_PRICE INT DEFAULT 0,
    CUS_GENDER CHAR,
    PRIMARY KEY (PRICING_ID),
    FOREIGN KEY (PROD_ID) REFERENCES PRODUCT (PROD_ID),
    FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER (SUPP_ID)
);