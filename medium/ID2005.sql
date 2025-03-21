-- Share of Active Users
-- Meta Medium Question
-- Stratascratch platform
-- Remember: need to cast to decimal because integer divison

SELECT SUM(CASE
                WHEN country = 'USA' AND status='open' THEN 1
                ELSE 0
            END) / COUNT(DISTINCT user_id)::DECIMAL * 100.0 AS us_active_share
FROM fb_active_users