-- Premium Accounts
-- Meta Medium Question
-- Stratascratch platform

-- Review again because this was more challenging
-- 1. Create a CTE where final_price > 0
-- 2. Do a self join (a self left join) and use AND condition on the join itself instead of in the WHERE clause 

WITH premium_accounts AS (
    SELECT account_id, entry_date, final_price
    FROM premium_accounts_by_day
    WHERE final_price > 0
)
    
SELECT a.entry_date,
       COUNT(DISTINCT a.account_id) AS premium_paid_accounts,
       COUNT(DISTINCT b.account_id) AS premium_paid_accounts_after_7d
FROM premium_accounts a
LEFT JOIN premium_accounts b 
ON a.account_id = b.account_id
AND (b.entry_date - a.entry_date) = 7
GROUP BY a.entry_date
ORDER BY a.entry_date
LIMIT 7;