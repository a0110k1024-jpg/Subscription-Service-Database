-- Sample data for Subscription Service Database

-- Subscribers
INSERT INTO Subscribers VALUES (1001,'vandana@example.com','Vandana Tanwar','+911234567890','India',TO_DATE('2023-01-10','YYYY-MM-DD'));
INSERT INTO Subscribers VALUES (1002,'alice@example.com','Alice Sharma','+911234567891','India',TO_DATE('2024-06-15','YYYY-MM-DD'));
INSERT INTO Subscribers VALUES (1003,'bob@example.com','Bob Verma','+911234567892','USA',TO_DATE('2025-02-20','YYYY-MM-DD'));

-- Features
INSERT INTO Features VALUES (1,'Unlimited Projects','Create unlimited projects');
INSERT INTO Features VALUES (2,'Priority Support','24/7 priority support');
INSERT INTO Features VALUES (3,'Advanced Analytics','Detailed usage analytics');

-- Plans
INSERT INTO Plans VALUES (1,'Basic','MONTHLY',499,'INR');
INSERT INTO Plans VALUES (2,'Pro','MONTHLY',999,'INR');
INSERT INTO Plans VALUES (3,'Enterprise','YEARLY',12000,'INR');

-- Plan Features
INSERT INTO Plan_Features VALUES (1,1);
INSERT INTO Plan_Features VALUES (2,1);
INSERT INTO Plan_Features VALUES (2,2);
INSERT INTO Plan_Features VALUES (3,1);
INSERT INTO Plan_Features VALUES (3,2);
INSERT INTO Plan_Features VALUES (3,3);

-- Subscriptions
INSERT INTO Subscriptions VALUES (5001,1001,2,TO_DATE('2025-01-01','YYYY-MM-DD'),NULL,'Active',TO_DATE('2025-11-01','YYYY-MM-DD'));
INSERT INTO Subscriptions VALUES (5002,1002,1,TO_DATE('2025-10-01','YYYY-MM-DD'),NULL,'Active',TO_DATE('2025-11-01','YYYY-MM-DD'));
INSERT INTO Subscriptions VALUES (5003,1003,3,TO_DATE('2025-02-01','YYYY-MM-DD'),TO_DATE('2026-02-01','YYYY-MM-DD'),'Active',TO_DATE('2026-02-01','YYYY-MM-DD'));

-- Usage Records
INSERT INTO Usage_Records VALUES (8001,5001,TO_DATE('2025-10-01','YYYY-MM-DD'),'API Calls',1500);
INSERT INTO Usage_Records VALUES (8002,5001,TO_DATE('2025-10-15','YYYY-MM-DD'),'Storage GB',20);
INSERT INTO Usage_Records VALUES (8003,5002,TO_DATE('2025-10-20','YYYY-MM-DD'),'API Calls',200);

-- Invoices
INSERT INTO Invoices VALUES (4001,5001,TO_DATE('2025-10-01','YYYY-MM-DD'),TO_DATE('2025-10-10','YYYY-MM-DD'),1098,'Paid');
INSERT INTO Invoices VALUES (4002,5002,TO_DATE('2025-10-01','YYYY-MM-DD'),TO_DATE('2025-10-10','YYYY-MM-DD'),499,'Unpaid');

-- Invoice Items
INSERT INTO Invoice_Items VALUES (4001,'Monthly Pro Plan',999);
INSERT INTO Invoice_Items VALUES (4001,'GST',99);
INSERT INTO Invoice_Items VALUES (4002,'Monthly Basic Plan',499);

-- Payments
INSERT INTO Payments VALUES (9001,4001,1098,TO_DATE('2025-10-02','YYYY-MM-DD'),'Credit Card');

-- Promo Codes
INSERT INTO Promo_Codes VALUES ('WELCOME10',10,TO_DATE('2025-01-01','YYYY-MM-DD'),TO_DATE('2025-12-31','YYYY-MM-DD'),1);

-- Audit Log
INSERT INTO Audit_Log VALUES (1,'Subscriptions','5001','Created',TO_DATE('2025-01-01','YYYY-MM-DD'),'System','Subscription created via signup');
