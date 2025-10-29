-- Example queries for Subscription Service Database

-- 1. Active subscribers and their plan
SELECT s.subscriber_id, s.full_name, p.plan_name, sub.status, sub.next_billing_date
FROM Subscribers s
JOIN Subscriptions sub ON s.subscriber_id = sub.subscriber_id
JOIN Plans p ON sub.plan_id = p.plan_id
WHERE sub.status = 'Active';

-- 2. Outstanding invoices
SELECT i.invoice_id, i.subscription_id, i.total_amount, i.due_date
FROM Invoices i
WHERE i.status = 'Unpaid' OR (i.status = 'Overdue' AND i.due_date < SYSDATE);

-- 3. Revenue in October 2025
SELECT SUM(amount) AS revenue_oct_2025
FROM Payments
WHERE EXTRACT(MONTH FROM payment_date) = 10 AND EXTRACT(YEAR FROM payment_date) = 2025;

-- 4. Usage summary per subscription (last 30 days)
SELECT ur.subscription_id, ur.metric, SUM(ur.quantity) AS total_quantity
FROM Usage_Records ur
WHERE ur.usage_date >= (SYSDATE - 30)
GROUP BY ur.subscription_id, ur.metric;

-- 5. Subscriptions due for renewal in next 7 days
SELECT subscription_id, subscriber_id, next_billing_date
FROM Subscriptions
WHERE next_billing_date BETWEEN SYSDATE AND (SYSDATE + 7);
