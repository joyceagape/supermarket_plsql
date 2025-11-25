# Supermarket PL/SQL Project

## Project Overview

This repository contains a fully interactive **PL/SQL Supermarket Inventory & Billing System**. It demonstrates the use of:

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
3. Open `scripts/supermarket_inventory_full.sql`.
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

## Optional Enhancements

* Include screenshots of script output in `documentation/`.
* Add a flowchart of menu operations for documentation clarity.
