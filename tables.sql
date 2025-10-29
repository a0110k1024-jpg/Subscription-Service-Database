-- Subscription Service Database (Oracle SQL)

-- Subscribers
CREATE TABLE Subscribers (
    subscriber_id NUMBER PRIMARY KEY,
    email VARCHAR2(150) UNIQUE,
    full_name VARCHAR2(200),
    phone VARCHAR2(30),
    country VARCHAR2(100),
    created_at DATE
);

-- Features and Plans
CREATE TABLE Features (
    feature_id NUMBER PRIMARY KEY,
    feature_name VARCHAR2(200),
    description VARCHAR2(500)
);

CREATE TABLE Plans (
    plan_id NUMBER PRIMARY KEY,
    plan_name VARCHAR2(100),
    billing_cycle VARCHAR2(20), -- MONTHLY, YEARLY
    base_price NUMBER,
    currency VARCHAR2(10)
);

CREATE TABLE Plan_Features (
    plan_id NUMBER REFERENCES Plans(plan_id),
    feature_id NUMBER REFERENCES Features(feature_id),
    PRIMARY KEY (plan_id, feature_id)
);

-- Subscriptions
CREATE TABLE Subscriptions (
    subscription_id NUMBER PRIMARY KEY,
    subscriber_id NUMBER REFERENCES Subscribers(subscriber_id),
    plan_id NUMBER REFERENCES Plans(plan_id),
    start_date DATE,
    end_date DATE,
    status VARCHAR2(30), -- Active, Cancelled, Past_Due
    next_billing_date DATE
);

-- Usage records (for metered billing)
CREATE TABLE Usage_Records (
    usage_id NUMBER PRIMARY KEY,
    subscription_id NUMBER REFERENCES Subscriptions(subscription_id),
    usage_date DATE,
    metric VARCHAR2(100),
    quantity NUMBER
);

-- Invoices and invoice items
CREATE TABLE Invoices (
    invoice_id NUMBER PRIMARY KEY,
    subscription_id NUMBER REFERENCES Subscriptions(subscription_id),
    invoice_date DATE,
    due_date DATE,
    total_amount NUMBER,
    status VARCHAR2(30) -- Paid, Unpaid, Overdue
);

CREATE TABLE Invoice_Items (
    invoice_id NUMBER REFERENCES Invoices(invoice_id),
    description VARCHAR2(400),
    amount NUMBER,
    PRIMARY KEY (invoice_id, description)
);

-- Payments
CREATE TABLE Payments (
    payment_id NUMBER PRIMARY KEY,
    invoice_id NUMBER REFERENCES Invoices(invoice_id),
    amount NUMBER,
    payment_date DATE,
    payment_method VARCHAR2(50)
);

-- Promo codes
CREATE TABLE Promo_Codes (
    promo_code VARCHAR2(50) PRIMARY KEY,
    discount_percent NUMBER,
    valid_from DATE,
    valid_to DATE,
    active NUMBER(1) -- 1 active, 0 inactive
);

-- Audit log
CREATE TABLE Audit_Log (
    audit_id NUMBER PRIMARY KEY,
    entity VARCHAR2(100),
    entity_id VARCHAR2(100),
    action VARCHAR2(100),
    action_time DATE,
    performed_by VARCHAR2(200),
    details VARCHAR2(1000)
);
