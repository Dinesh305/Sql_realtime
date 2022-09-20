--;drop table if exists ankit_transactions;
--create table ankit_transactions(
--order_id int,
--cust_id int,
--order_date date,
--amount int
--);
--delete from ankit_transactions;
--insert into ankit_transactions values 
--(1,1,'2020-01-15',150)
--,(2,1,'2020-02-10',150)
--,(3,2,'2020-01-16',150)
--,(4,2,'2020-02-25',150)
--,(5,3,'2020-01-10',150)
--,(6,3,'2020-02-20',150)
--,(7,4,'2020-01-20',150)
--,(8,5,'2020-02-20',150)
----=======================================================================================

--select * from ankit_transactions

--;with cte_1 as 
--(
--select *,month(order_date) month_col, row_number() over (partition by cust_id order by order_date, cust_id) res from ankit_transactions
--)
----select * from cte_1
--select month_col,sum(case when res ='2' then 1 else 0 end) repeated from cte_1
--group by month_col