--Cleaning Gross column

--Detect the missing values
SELECT 
  [dbo].Worksheet$.Gross 
FROM 
  [dbo].Worksheet$ 
WHERE 
  Gross LIKE '#%' 
SELECT 
  [dbo].Worksheet$.Gross 
FROM 
  [dbo].Worksheet$ 
WHERE 
  Gross LIKE '%^%' 

--Replace all the values starting with # with NULL
UPDATE 
  [dbo].Worksheet$ 
SET 
  Gross = NULL 
WHERE 
  Gross LIKE '#%' 

--Replace all the values %^%^%^% with NULL
UPDATE 
  [dbo].Worksheet$ 
SET 
  Gross = NULL 
WHERE 
  Gross LIKE '%^%' 

-- Remove signs $ and M from Gross values
UPDATE 
  [dbo].Worksheet$ 
SET 
  Gross = REPLACE(
    REPLACE(Gross, '$', ''), 
    'M', 
    ''
  ) 

--Add a new integer column
ALTER TABLE 
  [dbo].Worksheet$ 
ADD 
  [Gross_new] INT 

-- Make  [Gross_new] able to store float numbers 
ALTER TABLE 
  [dbo].Worksheet$ ALTER COLUMN[Gross_new] FLOAT 

-- Update the new column with converted values from the old column
UPDATE 
  [dbo].Worksheet$ 
SET 
  [Gross_new] = ROUND(
    TRY_CONVERT(float, [Gross]), 
    2
  )
