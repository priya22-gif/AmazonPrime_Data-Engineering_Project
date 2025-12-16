CREATE DATABASE SCOPED CREDENTIAL cred_amazonprime
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://adlsamazonprime.blob.core.windows.net/silver',
    CREDENTIAL = cred_amazonprime
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://adlsamazonprime.blob.core.windows.net/gold',
    CREDENTIAL = cred_amazonprime
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE gold.exttitles
WITH
(
    LOCATION = 'exttitles',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)AS
SELECT * FROM gold.titles


SELECT * FROM gold.exttitles