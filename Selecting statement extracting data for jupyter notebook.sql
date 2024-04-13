--Selecting statement to extract data for jupyter notebook
SELECT 
  [F1], 
  [Movie Name], 
  [Release Year] AS Year, 
  [Duration], 
  [Movie Rating] AS Rating, 
  [Metascore], 
  [Votes], 
  [Gross_new] As Gross, 
  [Description] 
FROM 
  [imbd].[dbo].[Worksheet$]
