LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/generated/customer/customer.ent.csv' INTO TABLE blc_customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/generated/customer/customer_anonymous.csv' INTO TABLE blc_customer FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/generated/customer/customer_role.csv' INTO TABLE blc_customer_role FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ROLE_ID,CUSTOMER_ID,ROLE_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/search_facet.csv' INTO TABLE blc_search_facet FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SEARCH_FACET_ID,FIELD_ID,LABEL,@SHOW_ON_SEARCH,@MULTISELECT,SEARCH_DISPLAY_PRIORITY,@REQUIRES_ALL_DEPENDENT) SET SHOW_ON_SEARCH = CAST(@SHOW_ON_SEARCH AS UNSIGNED), MULTISELECT = CAST(@MULTISELECT AS UNSIGNED), REQUIRES_ALL_DEPENDENT = CAST(@REQUIRES_ALL_DEPENDENT AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/category.csv' INTO TABLE blc_category FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CATEGORY_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,ARCHIVED,DESCRIPTION,DISPLAY_TEMPLATE,FULFILLMENT_TYPE,INVENTORY_TYPE,LONG_DESCRIPTION,NAME,URL,URL_KEY,DEFAULT_PARENT_CATEGORY_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/cat_search_facet_xref.csv' INTO TABLE blc_cat_search_facet_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CATEGORY_SEARCH_FACET_ID,CATEGORY_ID,SEARCH_FACET_ID,SEQUENCE);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/search_facet_range.csv' INTO TABLE blc_search_facet_range FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SEARCH_FACET_RANGE_ID,SEARCH_FACET_ID,MIN_VALUE,MAX_VALUE);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/category_xref.csv' INTO TABLE blc_category_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (DISPLAY_ORDER,CATEGORY_ID,SUB_CATEGORY_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product.csv' INTO TABLE blc_product FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_ID,ARCHIVED,@CAN_SELL_WITHOUT_OPTIONS,DISPLAY_TEMPLATE,@IS_FEATURED_PRODUCT,MANUFACTURE,MODEL,URL,URL_KEY,DEFAULT_CATEGORY_ID) SET CAN_SELL_WITHOUT_OPTIONS = CAST(@CAN_SELL_WITHOUT_OPTIONS AS UNSIGNED), IS_FEATURED_PRODUCT = CAST(@IS_FEATURED_PRODUCT AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/sku.csv' INTO TABLE blc_sku FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,@IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) SET IS_MACHINE_SORTABLE = CAST(@IS_MACHINE_SORTABLE AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_bundle.csv' INTO TABLE blc_product_bundle FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (@AUTO_BUNDLE,@BUNDLE_PROMOTABLE,@ITEMS_PROMOTABLE,PRICING_MODEL,BUNDLE_PRIORITY,PRODUCT_ID) SET AUTO_BUNDLE = CAST(@AUTO_BUNDLE AS UNSIGNED), BUNDLE_PROMOTABLE = CAST(@BUNDLE_PROMOTABLE AS UNSIGNED), ITEMS_PROMOTABLE = CAST(@ITEMS_PROMOTABLE AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/sku_bundle_item.csv' INTO TABLE blc_sku_bundle_item FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_option.csv' INTO TABLE blc_product_option FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_ID,ATTRIBUTE_NAME,DISPLAY_ORDER,LABEL,@REQUIRED,OPTION_TYPE) SET REQUIRED = CAST(@REQUIRED AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_option_value.csv' INTO TABLE blc_product_option_value FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_VALUE_ID,ATTRIBUTE_VALUE,DISPLAY_ORDER,PRICE_ADJUSTMENT,PRODUCT_OPTION_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/sku_option_value_xref.csv' INTO TABLE blc_sku_option_value_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,PRODUCT_OPTION_VALUE_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_sku_xref.csv' INTO TABLE blc_product_sku_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_ID,SKU_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_option_xref.csv' INTO TABLE blc_product_option_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_ID,PRODUCT_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/category_product_xref.csv' INTO TABLE blc_category_product_xref FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (DISPLAY_ORDER,CATEGORY_ID,PRODUCT_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/catalog/product_featured.csv' INTO TABLE blc_product_featured FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FEATURED_PRODUCT_ID,SEQUENCE,CATEGORY_ID,PRODUCT_ID);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/fulfillment_option.ent.csv' INTO TABLE blc_fulfillment_option FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_OPTION_ID,NAME,LONG_DESCRIPTION,@var1,FULFILLMENT_TYPE) SET USE_FLAT_RATES = CAST(@var1 AS UNSIGNED);

LOAD DATA INFILE '/Java_Projects/github/BLCLoadTest/generate-data/data/setup/fulfillment_option_fixed.csv' INTO TABLE blc_fulfillment_option_fixed FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_OPTION_ID,PRICE);