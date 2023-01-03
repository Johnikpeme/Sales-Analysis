/****** Cleansed customer data ***/
SELECT 
c.CustomerKey AS customer_key
      /**,[GeographyKey]**/
      /**,[CustomerAlternateKey]**/
      /**,[Title]**/
,c.FirstName AS first_name
,c.LastName AS last_name
,c.FirstName+ ' ' +c.LastName As Full_name
      /**,[NameStyle]**/
      /**,[BirthDate]**/
      /**,[MaritalStatus]**/
      /**,[Suffix]**/
,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      /**,[EmailAddress]**/
      /**,[YearlyIncome]**/
      /**,[TotalChildren]**/
      /**,[NumberChildrenAtHome]**/
      /**,[EnglishEducation]**/
      /**,[SpanishEducation]**/
      /**,[FrenchEducation]**/
      /**,[EnglishOccupation]**/
      /**,[SpanishOccupation]**/
      /**,[FrenchOccupation]**/
      /**,[HouseOwnerFlag]**/
      /**,[NumberCarsOwned]**/
      /**,[AddressLine1]**/
      /**,[AddressLine2]**/
      /**,[Phone]**/
,c.DateFirstPurchase AS purchase_date
      /**,[CommuteDistance]**/
,g.City AS City_name  
 FROM dbo.DimCustomer c
 JOIN dbo.DimGeography g
 ON g.GeographyKey = c.GeographyKey
 ORDER BY /**order clause for good arrangement**/
 CustomerKey ASC