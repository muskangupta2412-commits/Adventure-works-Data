CREATE DATABASE SCOPED CREDENTIAL cred_muskan
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://stazureprojectmg.blob.core.windows.net/silver',
    CREDENTIAL = cred_muskan
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://stazureprojectmg.blob.core.windows.net/gold',
    CREDENTIAL = cred_muskan
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales


CREATE EXTERNAL TABLE gold.extret
WITH
(
    LOCATION = 'extret',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.ret



CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customer




CREATE EXTERNAL TABLE gold.extproduct
WITH
(
    LOCATION = 'extproduct',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product



CREATE EXTERNAL TABLE gold.extprodcat
WITH
(
    LOCATION = 'extprodcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.productcategory




CREATE EXTERNAL TABLE gold.extprodsub
WITH
(
    LOCATION = 'extprodsub',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.productsubcategories




CREATE EXTERNAL TABLE gold.extter
WITH
(
    LOCATION = 'extter',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.territories




CREATE EXTERNAL TABLE gold.cal
WITH
(
    LOCATION = 'extcal',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.calendar



