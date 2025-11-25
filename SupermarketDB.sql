SET SERVEROUTPUT ON;
DECLARE
    TYPE product_rec IS RECORD (
        product_id   NUMBER,
        name         VARCHAR2(30),
        price        NUMBER,
        stock_qty    NUMBER,
        buy_qty      NUMBER
    );
    TYPE product_tab IS TABLE OF product_rec INDEX BY PLS_INTEGER;
    products product_tab;
    total_bill NUMBER := 0;
    input_qty NUMBER;
    choice NUMBER;
    new_id NUMBER := 105;

BEGIN
    -- Initialize products
    products(1) := product_rec(101, 'chicken', 1.5, 10, 0);
    products(2) := product_rec(102, 'flour', 2.0, 5, 0);
    products(3) := product_rec(103, 'milk', 1.0, 8, 0);
    products(4) := product_rec(104, 'eggs', 0.5, 12, 0);

    -- Example test sequence
    FOR idx IN 1..3 LOOP
        IF idx = 1 THEN
            choice := 1; -- Add product
        ELSIF idx = 2 THEN
            choice := 2; -- Remove product
        ELSE
            choice := 3; -- Purchase products
        END IF;

        IF choice = 1 THEN
            -- Add product
            DECLARE
                pname VARCHAR2(50) := 'cheese';
                pprice NUMBER := 3.5;
                pstock NUMBER := 7;
            BEGIN
                products(new_id - 100) := product_rec(new_id, pname, pprice, pstock, 0);
                DBMS_OUTPUT.PUT_LINE('Product ' || pname || ' added with ID: ' || new_id);
                new_id := new_id + 1;
            END;

        ELSIF choice = 2 THEN
            -- Remove product
            DECLARE
                rid NUMBER := 102; -- Remove 'flour'
            BEGIN
                FOR i IN products.FIRST..products.LAST LOOP
                    IF products.EXISTS(i) AND products(i).product_id = rid THEN
                        products.DELETE(i);
                        DBMS_OUTPUT.PUT_LINE('Product ID ' || rid || ' removed successfully.');
                        EXIT;
                    END IF;
                END LOOP;
            END;

        ELSIF choice = 3 THEN
            -- Purchase products
            FOR i IN products.FIRST..products.LAST LOOP
                IF products.EXISTS(i) THEN
                    DBMS_OUTPUT.PUT_LINE('Product: ' || products(i).name ||
                                         ' | Price: $' || products(i).price ||
                                         ' | Available Stock: ' || products(i).stock_qty);
                    -- Hardcoded purchase quantities for testing
                    IF products(i).product_id = 101 THEN
                        input_qty := 5; -- chicken
                    ELSIF products(i).product_id = 103 THEN
                        input_qty := 2; -- milk
                    ELSE
                        input_qty := 1;
                    END IF;

                    IF input_qty > products(i).stock_qty THEN
                        DBMS_OUTPUT.PUT_LINE('Warning: Requested quantity for ' || products(i).name || ' exceeds stock!');
                        CONTINUE;
                    END IF;

                    products(i).buy_qty := input_qty;
                    total_bill := total_bill + (products(i).price * products(i).buy_qty);
                END IF;
            END LOOP;

            DBMS_OUTPUT.PUT_LINE('---------------------------------');
            DBMS_OUTPUT.PUT_LINE('Total bill amount: $' || total_bill);
            DBMS_OUTPUT.PUT_LINE('Thank you for shopping!');
            total_bill := 0;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Exiting test sequence...');
END;
/
