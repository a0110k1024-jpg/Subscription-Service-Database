# 🔔 Subscription Service Database

**Author:**  Aryan
**Project Type:** DBMS / Oracle SQL  
**Date Generated:** 2025-10-29

## 📖 Project Description
The Subscription Service Database handles subscriber information, plan management, automated billing, and usage tracking.  
Designed for SaaS or content platforms, the schema supports plans, subscriptions, usage records, billing cycles, invoices, and payments.

## 🎯 System Features
- Subscriber profiles and contact details.  
- Flexible plan and feature management.  
- Automated subscription billing and invoice generation.  
- Usage tracking for metered billing.  
- Payments and invoice status tracking.  
- Promotional codes and discounts (basic).  
- Audit log for billing and subscription events.

## 📁 Database Tables (suggested)
- Subscribers
- Plans, Plan_Features, Features
- Subscriptions
- Usage_Records
- Invoices, Invoice_Items
- Payments
- Billing_Schedule
- Promo_Codes
- Audit_Log

## ⚙️ How to Run
1. Install Oracle Database or use [Oracle Live SQL](https://livesql.oracle.com/).  
2. Execute scripts in the following order:
   ```sql
   tables.sql
   insert_data.sql
   queries.sql
   ```
3. Verify created tables:
   ```sql
   SELECT table_name FROM user_tables ORDER BY table_name;
   ```

## 🧾 Files in this package
- `README.md` — Project documentation (this file)  
- `tables.sql` — Oracle-compatible table creation script  
- `insert_data.sql` — Sample data to populate the schema  
- `queries.sql` — Useful queries and reports  
- `er_diagram.png` — ER diagram placeholder

---
