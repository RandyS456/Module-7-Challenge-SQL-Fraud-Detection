--Part 1: Section A
--Display cardholders,credit cards, and count small transactions
SELECT 
    ch.id,
    ch.name,
    cc.card AS credit_card,
    COUNT(t.id) AS total_transactions,
      SUM(CASE WHEN t.amount < 2.00 THEN 1 ELSE 0 END) AS small_transactions_count

--Join card_holder,credit_card, and transactions tables
FROM 
    card_holder ch
JOIN 
    credit_card cc ON ch.id = cc.cardholder_id
JOIN 
    transaction t ON cc.card = t.card

--Grouping the transactions of each cardholder and display in descending order
GROUP BY 
    ch.id, ch.name, cc.card
ORDER BY 
    ch.id;


--Part 1: Section B
--Display cardholders,credit cards, and transaction times and amounts
SELECT 
    t.id,
    t.date,
    t.amount,
    ch.id,
    ch.name,
    c.card AS credit_card,
    t.id_merchant
	
--Join card_holder,credit_card, and transactions tables	
FROM 
    transaction t
JOIN 
    credit_card c ON t.card = c.card
JOIN 
    card_holder ch ON c.cardholder_id = ch.id
	
--Extract all transactions between 7:00 AM and 9:00 AM and display top 100 in descending order
WHERE 
    EXTRACT(HOUR FROM t.date) BETWEEN 7 AND 9
ORDER BY 
    t.amount DESC
LIMIT 100;



--Part 1: Section C
--Display merchants,total transactions and small transactions
SELECT 
    m.id,
    m.name,
      COUNT(t.id) AS total_transactions,
      SUM(CASE WHEN t.amount < 2.00 THEN 1 ELSE 0 END) AS small_transactions_count
      
--Join card_holder,credit_card, merchant and transactions tables	    
FROM 
    transaction t
JOIN 
    credit_card c ON t.card = c.card
JOIN 
    card_holder ch ON c.cardholder_id = ch.id
JOIN 
    merchant m ON t.id_merchant = m.id
    
--Grouping the mechants and transaction amounts and display in ascending order    
GROUP BY 
    m.id, m.name,t.amount
ORDER BY 
    t.amount ASC
LIMIT 5




