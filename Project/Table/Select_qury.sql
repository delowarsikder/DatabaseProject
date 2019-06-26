select * from area where population>500;

select owner_id,donate_quantity from donation where goods_id=301 and donate_quantity>=50;

delete from donation where goods_id=301 and donate_quantity=0;

alter table worker add unique key(password);

select distinct owner_id,donate_quantity from donation;

 -- aggregate function
 select goods_id,max(donate_quantity) from donation group by goods_id;
 
 select goods_id Goods_id,min(donate_quantity) from donation group by goods_id;
 
 select victim_owner Victim_id,product_id,sum(goods_quantity) from relief group by victim_owner,product_id order by victim_owner desc;
 
 select victim_id from victim group by victim_id,victim_area having victim_area<>102;
 
 
  -- sub query
  
  select * from area where area_id=(
  select victim_area from victim where victim_id=402);
  
  select * from worker where volunteer_id=(select job_id from job where job_id=701);
  
 -- join operation
 
 select worker_id ,area_id from worker a join area w using(area_id);
 
 select w.worker_id, w.first_name,w.last_name from worker w join area a on(w.area_id=a.area_id); 
 
 
 -- set operation
 
select goods_id,stock_quantity Stock from goods
 union
(select goods_id,donate_quantity from donation);

select goods_id,stock_quantity Stock from goods
 union all
(select goods_id,donate_quantity from donation);

select goods_id,stock_quantity Stock from goods
 intersect
(select goods_id,donate_quantity from donation);
 
 
 
 

 



