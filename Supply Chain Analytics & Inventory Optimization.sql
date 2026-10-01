 
CREATE DATABASE TEST_ENV

use test_env

select * from [dbo].[Products]


select * from [dbo].[[Test Environment Inventory Dataset]]]

select distinct [Order_Date_DD_MM_YYYY] from [dbo].[[Test Environment Inventory Dataset]]]

select distinct [Availability] from [dbo].[[Test Environment Inventory Dataset]]]

select distinct [Demand] from [dbo].[[Test Environment Inventory Dataset]]]

select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[[Test Environment Inventory Dataset]]] as a
left join products as b on a.product_id = b.product_id
----------------------------------------------------------------------------------------------------------------------------

 select * into new_table from 
(select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[[Test Environment Inventory Dataset]]] as a
left join products as b on a.product_id = b.product_id) x

select * from new_table

-------------------------------------------------------------------------------------------

create database prod

use prod

select * from [dbo].[Prod+Env+Inventory+Dataset]

select distinct [Order_Date_DD_MM_YYYY]from [dbo].[Prod+Env+Inventory+Dataset]
where [Order_Date_DD_MM_YYYY] is null 

select distinct [Product_ID]from [dbo].[Prod+Env+Inventory+Dataset] order by [Product_ID]
where [Order_Date_DD_MM_YYYY] is null 

update [dbo].[Prod+Env+Inventory+Dataset] 
set [Product_ID] = 7 where [Product_ID] = 21

update [dbo].[Prod+Env+Inventory+Dataset] 
set [Product_ID] = 11 where [Product_ID] = 22

select distinct [Availability] from [dbo].[Prod+Env+Inventory+Dataset]

select distinct [Demand],[Availability] from [dbo].[Prod+Env+Inventory+Dataset]
---------------------------------------------------------------------------------------------------------------------------------------



 select * into new_table from 
(select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[Prod+Env+Inventory+Dataset] as a
left join [dbo].[Products+(1)] as b on a.product_id = b.product_id) x
