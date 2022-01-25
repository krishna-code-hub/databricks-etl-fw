-- Databricks notebook source
create database if not exists etl_fw;

-- COMMAND ----------

Create table etl_fw.customers_main_t1
(
id INT,
name string,
country string,
ods string
)
using parquet 
location "/mnt/rbdhub1000/retail-db/customers_main_t1";

-- COMMAND ----------

Create table etl_fw.customers_dept_t1
(
id INT,
dept string,
sal INT,
ods string
)
using parquet 
location "/mnt/rbdhub1000/retail-db/customers_dept_t1";

-- COMMAND ----------

insert into etl_fw.customers_main_t1 values (1,'Alex','malaysia','20220120');
insert into etl_fw.customers_main_t1 values (2,'Alvin','singapore','20220120');
insert into etl_fw.customers_main_t1 values (3,'sachin','india','20220120');
insert into etl_fw.customers_main_t1 values (4,'Warner','australia','20220120');

-- COMMAND ----------

insert into etl_fw.customers_dept_t1 values (1,'accounts',1000,'20220120');
insert into etl_fw.customers_dept_t1 values (2,'maths',2000,'20220120');
insert into etl_fw.customers_dept_t1 values (3,'housekeeping',3000,'20220120');
insert into etl_fw.customers_dept_t1 values (4,'accounts',4000,'20220120');
