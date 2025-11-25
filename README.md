# Supermarket PL/SQL Project

## Project Overview

This repository contains a fully interactive PL/SQL Supermarket Inventory. It demonstrates the use of:

* **Records**: Each product is stored as a record.
* **Collections**: Products stored in an indexed PL/SQL table.
* **GOTO statements**: Handle out-of-stock warnings.
* **Loops**: Iterates through products for billing or management.
* **Dynamic Input**: Users can add/remove products and input quantities.

## Repository Structure

```
supermarket_plsql_full/
├── scripts/
│   └── supermarket_inventory.sql
├── documentation/
│   └── Supermarket_PL_SQL.md           
└── README.md                            
```

## How to Run

1. Open **Oracle SQL Developer**.
2. Connect to your database.
3. Open `scripts/supermarket_inventory.sql`.
4. Run the script (**F5 – Run Script**).
5. Follow the interactive menu prompts:

   * `&choice` → Choose menu option (Add, Remove, Purchase, Exit).
   * `&pname`, `&pprice`, `&pstock` → When adding a product.
   * `&rid` → When removing a product.
   * `&qty` → When purchasing products.
6. Observe output, warnings, and total bill in the Script Output tab.

## Features

* Add new products dynamically.
* Remove existing products by ID.
* Purchase multiple products with quantity input.
* Out-of-stock warnings using **GOTO statements**.
* Dynamic total billing calculation.
* Menu-driven interface for easy navigation.

## PL/SQL Concepts Demonstrated

* **Records**
* **Collections**
* **Loops**
* **GOTO statements**
* **Dynamic user input**

## References:
#PLSQL #OraclePLSQL #GOTOStatement #PLSQLJump #DatabaseProgramming #OracleDatabase #PLSQLTutorial
# PLSQL Loops | Learn Coding
# https://docs.oracle.com/en/database/oracle/oracle-database/19.3/adpl/ 
# https://docs.oracle.com/en/database/oracle/oracle-database/19.3/timesten/optimizing-dml.html
# https://docs.oracle.com/en/database/oracle/sql-developer/20.4/sqldev/

