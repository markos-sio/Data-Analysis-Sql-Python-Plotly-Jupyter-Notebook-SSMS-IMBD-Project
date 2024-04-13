--CLEANING Watch Time COLUMN 
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Watch Time] = REPLACE([Watch Time], 'min', '')
  
-- CREATE A NEW COLUMN OF TYPE INT
ALTER TABLE 
  [dbo].Worksheet$ 
ADD 
  [Duration] INT
  
--UPDATE THE NEW COLUMN WITH THE CONVERTED VALUES FROM THE OLD COLUMN
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Duration] = TRY_CONVERT(INT, [Watch Time])
