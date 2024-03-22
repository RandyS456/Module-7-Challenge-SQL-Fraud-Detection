--Part 2: Section A
--Display cardholders with cardholder IDs #2 and #18 and transaction amounts
SELECT t.date,cc.cardholder_id, ch.name,t.amount
    FROM card_holder ch
    JOIN credit_card cc ON ch.id = cc.cardholder_id
    JOIN transaction t ON cc.card = t.card
	WHERE cc.cardholder_id IN(2,18)--use WHERE to identify ids #2 and #18 
    GROUP BY ch.name,cc.cardholder_id,t.date,t.amount
    ORDER BY cc.cardholder_id,ch.name, t.amount


--Part 2: Section B
--Display cardholder with cardholder IDs #25, dates, and transaction amounts	
SELECT cc.cardholder_id, ch.name, t.amount, t.date
    FROM card_holder ch
    JOIN credit_card cc ON ch.id = cc.cardholder_id
    JOIN transaction t ON cc.card = t.card
    WHERE cc.cardholder_id = 25--use WHERE to identify ids #2 and #18
    AND t.date >= '2018-01-01' AND t.date <= '2018-06-30'--use WHERE to identify date ranges
