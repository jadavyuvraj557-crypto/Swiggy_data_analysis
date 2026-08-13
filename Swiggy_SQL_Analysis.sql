USE SwiggyAnalysisDB;
GO


SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';


SELECT TOP 10 *
FROM dbo.Swiggy_clean_data;

SELECT COUNT(*) AS Total_Restaurants
FROM dbo.Swiggy_clean_data;

SELECT TOP 10
    Location,
    COUNT(*) AS Total_Restaurants
FROM dbo.Swiggy_clean_data
GROUP BY Location
ORDER BY Total_Restaurants DESC;


SELECT TOP 10
    Location,
    ROUND(AVG(Rating), 2) AS Average_Rating,
    COUNT(Rating) AS Rated_Restaurants
FROM dbo.Swiggy_clean_data
WHERE Rating IS NOT NULL
GROUP BY Location
HAVING COUNT(Rating) >= 20
ORDER BY Average_Rating DESC;


SELECT TOP 10
    Cuisine,
    COUNT(*) AS Total_Restaurants
FROM dbo.Swiggy_clean_data
WHERE Cuisine IS NOT NULL
GROUP BY Cuisine
ORDER BY Total_Restaurants DESC;


SELECT 
    Pure_Veg,
    COUNT(*) AS Total_Restaurants
FROM dbo.Swiggy_clean_data
GROUP BY Pure_Veg
ORDER BY Total_Restaurants DESC;


SELECT TOP 10
    Location,
    ROUND(AVG(CAST(Average_Price AS FLOAT)), 2) AS Average_Price,
    COUNT(*) AS Total_Restaurants
FROM dbo.Swiggy_clean_data
GROUP BY Location
HAVING COUNT(*) >= 20
ORDER BY Average_Price DESC;


SELECT TOP 10
    Restaurant_Name,
    Location,
    Rating,
    Number_of_Ratings,
    Average_Price
FROM dbo.Swiggy_clean_data
WHERE Rating IS NOT NULL
  AND Rating >= 4.5
  AND Number_of_Ratings >= 100
ORDER BY Rating DESC, Number_of_Ratings DESC;


SELECT TOP 10
    Cuisine,
    ROUND(AVG(Rating), 2) AS Average_Rating,
    COUNT(Rating) AS Rated_Restaurants
FROM dbo.Swiggy_clean_data
WHERE Rating IS NOT NULL
  AND Cuisine IS NOT NULL
GROUP BY Cuisine
HAVING COUNT(Rating) >= 20
ORDER BY Average_Rating DESC;


SELECT TOP 10
    Location,
    ROUND(AVG(Number_of_Ratings), 2) AS Avg_Number_of_Ratings,
    COUNT(Number_of_Ratings) AS Restaurants_With_Ratings
FROM dbo.Swiggy_clean_data
WHERE Number_of_Ratings IS NOT NULL
GROUP BY Location
HAVING COUNT(Number_of_Ratings) >= 20
ORDER BY Avg_Number_of_Ratings DESC;