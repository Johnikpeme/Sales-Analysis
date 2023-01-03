/**cleansed Dim_Date Table **/
SELECT TOP (1000) [DateKey]
      ,[FullDateAlternateKey] AS Date
      /**,[DayNumberOfWeek]**/
      ,[EnglishDayNameOfWeek] AS Day
      /**,[SpanishDayNameOfWeek]**/
      /**,[FrenchDayNameOfWeek]**/
      /**,[DayNumberOfMonth]**/
      /**,[DayNumberOfYear]**/
      ,[WeekNumberOfYear] AS WeekNum
      ,[EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName],3) AS month_short
      /**,[SpanishMonthName]**/
      /**,[FrenchMonthName]**/
      ,[MonthNumberOfYear] AS MonthNum
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS year
      /**,[CalendarSemester]**/
      /**,[FiscalQuarter]**/
      /**,[FiscalYear]**/
      /**,[FiscalSemester]**/
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE [CalendarYear]>=2020