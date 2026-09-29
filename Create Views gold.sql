CREATE VIEW gold.calendar
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
    )  as query1



CREATE VIEW gold.customer
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
    )  as query2

CREATE VIEW gold.product
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Product/',
    FORMAT = 'PARQUET'
    )  as query3


CREATE VIEW gold.productcategory
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
    )  as query4



CREATE VIEW gold.productsubcategories
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
    )  as query5



CREATE VIEW gold.ret
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
    )  as query6



CREATE VIEW gold.sales
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Sales*/',
    FORMAT = 'PARQUET'
    )  as query7



CREATE VIEW gold.territories
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://stazureprojectmg.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    )  as query8




    