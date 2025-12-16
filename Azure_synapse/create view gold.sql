-----------Create view cast------------------------------
CREATE VIEW gold.cast
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://adlsamazonprime.blob.core.windows.net/silver/AmazonPrime_cast/',
    FORMAT = 'PARQUET'
)AS query1
-----------Create view categories-----------------------
CREATE VIEW gold.categories
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://adlsamazonprime.blob.core.windows.net/silver/AmazonPrime_categories/',
    FORMAT = 'PARQUET'
)AS query2
------------Create view countries--------------------------------
CREATE VIEW gold.countries
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://adlsamazonprime.blob.core.windows.net/silver/AmazonPrime_countries/',
    FORMAT = 'PARQUET'
)AS query3
------------Create view directors--------------------------------
CREATE VIEW gold.directors
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://adlsamazonprime.blob.core.windows.net/silver/AmazonPrime_directors/',
    FORMAT = 'PARQUET'
)AS query4
------------Create view titles--------------------------------
CREATE VIEW gold.titles
AS
SELECT * FROM 
OPENROWSET(
    BULK 'https://adlsamazonprime.blob.core.windows.net/silver/AmazonPrime_titles/',
    FORMAT = 'PARQUET'
)AS query5