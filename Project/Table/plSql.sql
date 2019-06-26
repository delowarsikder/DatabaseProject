SET SERVEROUTPUT ON
 
 -- return type function in pl/sql
 
    create or replace function stock(total_goods in number, relief_goods in number)    
    return number    
    is     
    stock_goods number(8,2);    
    begin    
    stock_goods :=total_goods-relief_goods;    
    return stock_goods;    
    end;    
    /    
	
	
	DECLARE    
   stock_goods number(5,2);
   relief_goods number(5,2);   
   total_goods number(5,2);   
BEGIN    

select  sum(goods_quantity) into relief_goods from relief where product_id=301;
select  sum(stock_quantity) into total_goods from goods where goods_id=301;
   stock_goods := stock(total_goods,relief_goods);    
   dbms_output.put_line('stock is: ' || stock_goods);

	if stock_goods>0 then
		dbms_output.put_line('stock is available');
	else
		dbms_output.put_line('stock is unavailable');	
	end if;
END;    
/  

 
-- increase goods using procedure

CREATE OR REPLACE PROCEDURE total_goods(
    available_goods_id IN number,
    donate_goods IN NUMBER
) IS
BEGIN
   -- update goods
   UPDATE goods
   SET stock_quantity = stock_quantity + donate_goods
   WHERE goods_id = available_goods_id;
END;
/

-- before adjustment
SELECT stock_quantity FROM goods WHERE goods_id = 301;
-- call procedure
exec total_goods(301,100);
-- after adjustment
SELECT stock_quantity FROM goods WHERE goods_id = 301;



-- check goods update or using trigger
CREATE OR REPLACE TRIGGER check_goods BEFORE INSERT OR UPDATE ON
donation
FOR EACH ROW
DECLARE
 total_goods number(5,3);
 donate_goods number(5,2);
BEGIN

UPDATE goods
   SET stock_quantity =(select donate_quantity from donation)
   WHERE goods_id = (select goods_id from donation where goods_id=301);
	DBMS_OUTPUT.PUT_LINE('goods table is update');   
   
END;
/

--before insert
select stock_quantity from goods;

INSERT INTO donation
VALUES( 508, SYSDATE, 20.50, 301, 201 );
	--after insert
select stock_quantity from goods;
	