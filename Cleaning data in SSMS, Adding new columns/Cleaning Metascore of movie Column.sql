--CLEANING Metascore of movie COLUMN

--Replace the missing values(****) with NULL
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Meatscore of movie] = NULL 
WHERE 
  [Meatscore of movie] = '****' 
  
-- CREATE A NEW COLUMN OF TYPE INT
ALTER TABLE 
  [dbo].Worksheet$ 
ADD 
  [Metascore] INT
  
--UPDATE THE NEW COLUMN WITH THE CONVERTED VALUES FROM THE OLD COLUMN
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Metascore] = TRY_CONVERT(INT, [Meatscore of movie])
