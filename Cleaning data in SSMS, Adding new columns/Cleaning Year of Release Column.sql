--CLEANING Year of Release COLUMN
--REMOVE PARENTHESIS
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Year of Release] = REPLACE(
    REPLACE([Year of Release], '(', ''), 
    ')', 
    ''
  ) --CLEAN DATA VALUES REMOVING I AND II
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Year of Release] = REPLACE(
    REPLACE([Year of Release], 'I', ''), 
    'II', 
    ''
  ) --CREATE A NEW  INTEGER COLUMN
ALTER TABLE 
  [dbo].Worksheet$ 
ADD 
  [Release Year] INT -- UPDATE THE NEW COLUMN WITH CONVERTED VALUES FROM THE OLD COLUMN
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Release Year] = TRY_CONVERT(INT, [Year of Release])
