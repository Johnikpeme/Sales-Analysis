/****** Cleansed Product  ******/
SELECT p.ProductKey
      ,p.ProductAlternateKey AS Item_Code
      /**,[ProductSubcategoryKey]**/
      /**,[WeightUnitMeasureCode]**/
      /**,[SizeUnitMeasureCode]**/
      ,p.EnglishProductName AS product_name
	  ,pc.EnglishProductCategoryName AS product_category /**from Category table**/
	  ,ps.EnglishProductSubCategoryName AS product_subcategory  /**from sub-catgeory table**/
      /**,[SpanishProductName]**/
      /**,[FrenchProductName]**/
      /**,[StandardCost]**/
      /**,[FinishedGoodsFlag]**/
      ,p.Color AS product_color
      /**,[SafetyStockLevel]**/
      /**,[ReorderPoint]**/
      /**,[ListPrice]**/
      ,p.Size AS product_size
      /**,[SizeRange]**/
      /**,[Weight]**/
      /**,[DaysToManufacture]**/
      ,p.ProductLine AS Product_Line
      /**,[DealerPrice]**/
      /**,[Class]**/
      /**,[Style]**/
      ,p.ModelName AS Model_name
      /**,[LargePhoto]**/
      ,p.EnglishDescription AS Product_Description
      /**,[FrenchDescription]**/
      /**,[ChineseDescription]**/
      /**,[ArabicDescription]**/
      /**,[HebrewDescription]**/
      /**,[ThaiDescription]**/
      /**,[GermanDescription]**/
      /**,[JapaneseDescription]**/
      /**,[TurkishDescription]**/
      /**,[StartDate]**/
      /**,[EndDate]**/
      /**,[Status]**/
	  ,ISNULL (p.status,'Outdated') AS Product_status
  FROM dbo.DimProduct p
  LEFT JOIN dbo.DimProductSubcategory ps
  ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo. DimProductCategory pc
  ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY ProductKey ASC