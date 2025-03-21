-- Variable vs Fixed Rates (ID2000)
-- Credit Karma Medium Question
-- Stratascratch Platform 

-- Simple case statement usage

SELECT loan_id,
       CASE  WHEN rate_type='fixed' THEN 1 ELSE 0 END AS fixed,
       CASE WHEN rate_type='variable' THEN 1 ELSE 0 END AS variable
FROM submissions