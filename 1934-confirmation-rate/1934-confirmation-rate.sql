
SELECT
    S.user_id,
    IF(COUNT(C.action = 'confirmed') = 0, 0,
       ROUND(COUNT(IF(C.action = 'confirmed', 1, NULL)) / COUNT(*), 2)) AS confirmation_rate

FROM Signups S

LEFT JOIN Confirmations C ON S.user_id = C.user_id

GROUP BY S.user_id;