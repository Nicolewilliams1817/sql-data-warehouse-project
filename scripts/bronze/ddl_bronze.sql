/*
==================================================================
DDL Script: Create bronze tables
==================================================================
Script Purpose: 
    This script creates tables in the 'bronze' schema, dropping
    exitsing tables if already exist.
==================================================================
*/
	TRUNCATE TABLE bronze.cust_info;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
	INTO TABLE bronze.crm_cust_info
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    TRUNCATE TABLE bronze.prd_info;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
	INTO TABLE bronze.crm_prd_info
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    TRUNCATE TABLE bronze.sales_details;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
	INTO TABLE bronze.crm_sales_details
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    TRUNCATE TABLE bronze.CUST_AZ12;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
	INTO TABLE bronze.erp_CUST_AZ12
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    TRUNCATE TABLE bronze.LOC_A101;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
	INTO TABLE bronze.erp_LOC_A101
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    TRUNCATE TABLE bronze.PX_CAT_G1V2;
	LOAD DATA LOCAL INFILE '/Users/nicolemedina/Downloads/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
	INTO TABLE bronze.erp_PX_CAT_G1V2
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
