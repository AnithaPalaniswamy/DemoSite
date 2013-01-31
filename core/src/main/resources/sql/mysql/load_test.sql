LOAD DATA INFILE '${data.directory}/data/setup/generated/customer/customer.ent.csv' INTO TABLE BLC_CUSTOMER FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/customer/customer_anonymous.csv' INTO TABLE BLC_CUSTOMER FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ID,DATE_CREATED,CREATED_BY,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ADDRESS,@var2,@var4,@var3,@var1,CHALLENGE_QUESTION_ID,LOCALE_CODE,DATE_UPDATED,UPDATED_BY,CHALLENGE_ANSWER) SET DEACTIVATED = CAST(@var1 AS UNSIGNED), PASSWORD_CHANGE_REQUIRED = CAST(@var2 AS UNSIGNED), RECEIVE_EMAIL = CAST(@var3 AS UNSIGNED), IS_REGISTERED = CAST(@var4 AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/customer/customer_role.csv' INTO TABLE BLC_CUSTOMER_ROLE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CUSTOMER_ROLE_ID,CUSTOMER_ID,ROLE_ID);

LOAD DATA INFILE '${data.directory}/data/setup/field.ent.csv' INTO TABLE BLC_FIELD FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FIELD_ID,ENTITY_TYPE,PROPERTY_NAME,ABBREVIATION,@SEARCHABLE,@TRANSLATABLE,FACET_FIELD_TYPE) SET SEARCHABLE = CAST(@SEARCHABLE AS UNSIGNED), TRANSLATABLE = CAST(@TRANSLATABLE AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/field_search_types.ent.csv' INTO TABLE BLC_FIELD_SEARCH_TYPES FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FIELD_ID,SEARCHABLE_FIELD_TYPE);

LOAD DATA INFILE '${data.directory}/data/setup/search_facet.ent.csv' INTO TABLE BLC_SEARCH_FACET FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SEARCH_FACET_ID,FIELD_ID,LABEL,@SHOW_ON_SEARCH,@MULTISELECT,SEARCH_DISPLAY_PRIORITY,@REQUIRES_ALL_DEPENDENT) SET SHOW_ON_SEARCH = CAST(@SHOW_ON_SEARCH AS UNSIGNED), MULTISELECT = CAST(@MULTISELECT AS UNSIGNED), REQUIRES_ALL_DEPENDENT = CAST(@REQUIRES_ALL_DEPENDENT AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/category.ent.csv' INTO TABLE BLC_CATEGORY FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CATEGORY_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,ARCHIVED,DESCRIPTION,DISPLAY_TEMPLATE,FULFILLMENT_TYPE,INVENTORY_TYPE,LONG_DESCRIPTION,NAME,URL,URL_KEY,DEFAULT_PARENT_CATEGORY_ID);

LOAD DATA INFILE '${data.directory}/data/setup/cat_search_facet_xref.ent.csv' INTO TABLE BLC_CAT_SEARCH_FACET_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (CATEGORY_SEARCH_FACET_ID,CATEGORY_ID,SEARCH_FACET_ID,SEQUENCE);

LOAD DATA INFILE '${data.directory}/data/setup/search_facet_range.ent.csv' INTO TABLE BLC_SEARCH_FACET_RANGE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SEARCH_FACET_RANGE_ID,SEARCH_FACET_ID,MIN_VALUE,MAX_VALUE);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/category_xref.ent.csv' INTO TABLE BLC_CATEGORY_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (DISPLAY_ORDER,CATEGORY_ID,SUB_CATEGORY_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product.ent.csv' INTO TABLE BLC_PRODUCT FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_ID,ARCHIVED,@CAN_SELL_WITHOUT_OPTIONS,DISPLAY_TEMPLATE,@IS_FEATURED_PRODUCT,MANUFACTURE,MODEL,URL,URL_KEY,DEFAULT_CATEGORY_ID) SET CAN_SELL_WITHOUT_OPTIONS = CAST(@CAN_SELL_WITHOUT_OPTIONS AS UNSIGNED), IS_FEATURED_PRODUCT = CAST(@IS_FEATURED_PRODUCT AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_regular.ent.csv' INTO TABLE BLC_SKU FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,@IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) SET IS_MACHINE_SORTABLE = CAST(@IS_MACHINE_SORTABLE AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_bundle.ent.csv' INTO TABLE BLC_PRODUCT_BUNDLE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (@AUTO_BUNDLE,@BUNDLE_PROMOTABLE,@ITEMS_PROMOTABLE,PRICING_MODEL,BUNDLE_PRIORITY,PRODUCT_ID) SET AUTO_BUNDLE = CAST(@AUTO_BUNDLE AS UNSIGNED), BUNDLE_PROMOTABLE = CAST(@BUNDLE_PROMOTABLE AS UNSIGNED), ITEMS_PROMOTABLE = CAST(@ITEMS_PROMOTABLE AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_bundle.ent.csv' INTO TABLE BLC_SKU FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,@IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) SET IS_MACHINE_SORTABLE = CAST(@IS_MACHINE_SORTABLE AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_option.ent.csv' INTO TABLE BLC_SKU FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,ACTIVE_END_DATE,ACTIVE_START_DATE,AVAILABLE_FLAG,DESCRIPTION,CONTAINER_SHAPE,DEPTH,DIMENSION_UNIT_OF_MEASURE,GIRTH,HEIGHT,CONTAINER_SIZE,WIDTH,DISCOUNTABLE_FLAG,FULFILLMENT_TYPE,INVENTORY_TYPE,@IS_MACHINE_SORTABLE,LONG_DESCRIPTION,NAME,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,WEIGHT,WEIGHT_UNIT_OF_MEASURE,DEFAULT_PRODUCT_ID) SET IS_MACHINE_SORTABLE = CAST(@IS_MACHINE_SORTABLE AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_bundle_item.ent.csv' INTO TABLE BLC_SKU_BUNDLE_ITEM FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_BUNDLE_ITEM_ID,ITEM_SALE_PRICE,QUANTITY,PRODUCT_BUNDLE_ID,SKU_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_option.ent.csv' INTO TABLE BLC_PRODUCT_OPTION FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_ID,ATTRIBUTE_NAME,DISPLAY_ORDER,LABEL,@REQUIRED,OPTION_TYPE) SET REQUIRED = CAST(@REQUIRED AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_option_value.ent.csv' INTO TABLE BLC_PRODUCT_OPTION_VALUE FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_VALUE_ID,ATTRIBUTE_VALUE,DISPLAY_ORDER,PRICE_ADJUSTMENT,PRODUCT_OPTION_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_option_value_xref.ent.csv' INTO TABLE BLC_SKU_OPTION_VALUE_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (SKU_ID,PRODUCT_OPTION_VALUE_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_sku_xref.ent.csv' INTO TABLE BLC_PRODUCT_SKU_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_ID,SKU_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_option_xref.ent.csv' INTO TABLE BLC_PRODUCT_OPTION_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PRODUCT_OPTION_ID,PRODUCT_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/category_product_xref.ent.csv' INTO TABLE BLC_CATEGORY_PRODUCT_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (DISPLAY_ORDER,CATEGORY_ID,PRODUCT_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/product_featured.ent.csv' INTO TABLE BLC_PRODUCT_FEATURED FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FEATURED_PRODUCT_ID,SEQUENCE,CATEGORY_ID,PRODUCT_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/offer.ent.csv' INTO TABLE BLC_OFFER FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (OFFER_ID,APPLIES_WHEN_RULES,APPLIES_TO_RULES,@APPLY_OFFER_TO_MARKED_ITEMS,@APPLY_TO_SALE_PRICE,@ARCHIVED,@COMBINABLE_WITH_OTHER_OFFERS,OFFER_DELIVERY_TYPE,OFFER_DESCRIPTION,OFFER_DISCOUNT_TYPE,END_DATE,MAX_USES_PER_CUSTOMER,MAX_USES,OFFER_NAME,OFFER_ITEM_QUALIFIER_RULE,OFFER_ITEM_TARGET_RULE,OFFER_PRIORITY,QUALIFYING_ITEM_MIN_TOTAL,@STACKABLE,START_DATE,TARGET_SYSTEM,@TOTALITARIAN_OFFER,@USE_NEW_FORMAT,OFFER_TYPE,USES,OFFER_VALUE) SET APPLY_OFFER_TO_MARKED_ITEMS = CAST(@APPLY_OFFER_TO_MARKED_ITEMS AS UNSIGNED), APPLY_TO_SALE_PRICE = CAST(@APPLY_TO_SALE_PRICE AS UNSIGNED), ARCHIVED = CAST(@ARCHIVED AS UNSIGNED), COMBINABLE_WITH_OTHER_OFFERS = CAST(@COMBINABLE_WITH_OTHER_OFFERS AS UNSIGNED), STACKABLE = CAST(@STACKABLE AS UNSIGNED), TOTALITARIAN_OFFER = CAST(@TOTALITARIAN_OFFER AS UNSIGNED), USE_NEW_FORMAT = CAST(@USE_NEW_FORMAT AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/offer_item_criteria.ent.csv' INTO TABLE BLC_OFFER_ITEM_CRITERIA FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (OFFER_ITEM_CRITERIA_ID,ORDER_ITEM_MATCH_RULE,QUANTITY);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/qual_crit_offer_xref.ent.csv' INTO TABLE BLC_QUAL_CRIT_OFFER_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (OFFER_ID,OFFER_ITEM_CRITERIA_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/tar_crit_offer_xref.ent.csv' INTO TABLE BLC_TAR_CRIT_OFFER_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (OFFER_ID,OFFER_ITEM_CRITERIA_ID);

INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (101,'/img/sauces/Sudden-Death-Sauce-Bottle.jpg','Primary Image','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (102,'/img/sauces/Sudden-Death-Sauce-Close.jpg','Alt Image','alt1');

LOAD DATA INFILE '${data.directory}/data/setup/generated/catalog/sku_media_map.ent.csv' INTO TABLE BLC_SKU_MEDIA_MAP FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (BLC_SKU_SKU_ID,MEDIA_ID,MAP_KEY);

LOAD DATA INFILE '${data.directory}/data/setup/fulfillment_option.ent.csv' INTO TABLE BLC_FULFILLMENT_OPTION FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_OPTION_ID,NAME,LONG_DESCRIPTION,@var1,FULFILLMENT_TYPE) SET USE_FLAT_RATES = CAST(@var1 AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/fulfillment_option_fixed.csv' INTO TABLE BLC_FULFILLMENT_OPTION_FIXED FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_OPTION_ID,PRICE);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/order.csv' INTO TABLE BLC_ORDER FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (ORDER_ID,CREATED_BY,DATE_CREATED,DATE_UPDATED,UPDATED_BY,EMAIL_ADDRESS,NAME,ORDER_NUMBER,ORDER_STATUS,ORDER_SUBTOTAL,SUBMIT_DATE,ORDER_TOTAL,TOTAL_SHIPPING,TOTAL_TAX,CUSTOMER_ID,CURRENCY_CODE,LOCALE_CODE);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/order_item.csv' INTO TABLE BLC_ORDER_ITEM FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (ORDER_ITEM_ID,@ITEM_TAXABLE_FLAG,NAME,ORDER_ITEM_TYPE,PRICE,QUANTITY,RETAIL_PRICE,ORDER_ID,CATEGORY_ID,GIFT_WRAP_ITEM_ID,PERSONAL_MESSAGE_ID,SALE_PRICE,SPLIT_PARENT_ITEM_ID) SET ITEM_TAXABLE_FLAG = CAST(@ITEM_TAXABLE_FLAG AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/discrete_order_item.csv' INTO TABLE BLC_DISCRETE_ORDER_ITEM FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (ORDER_ITEM_ID,BASE_RETAIL_PRICE,SKU_ID,BUNDLE_ORDER_ITEM_ID,PRODUCT_ID,SKU_BUNDLE_ITEM_ID,BASE_SALE_PRICE);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/address.csv' INTO TABLE BLC_ADDRESS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (ADDRESS_ID,ADDRESS_LINE1,ADDRESS_LINE2,CITY,COMPANY_NAME,COUNTY,EMAIL_ADDRESS,FAX,FIRST_NAME,@IS_ACTIVE,@IS_BUSINESS,@IS_DEFAULT,LAST_NAME,POSTAL_CODE,PRIMARY_PHONE,SECONDARY_PHONE,STANDARDIZED,TOKENIZED_ADDRESS,VERIFICATION_LEVEL,ZIP_FOUR,COUNTRY,STATE_PROV_REGION) SET IS_ACTIVE = CAST(@IS_ACTIVE AS UNSIGNED), IS_DEFAULT = CAST(@IS_DEFAULT AS UNSIGNED), IS_BUSINESS = CAST(@IS_BUSINESS AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/fg.csv' INTO TABLE BLC_FULFILLMENT_GROUP FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_GROUP_ID,DELIVERY_INSTRUCTION,@SHIPPING_PRICE_TAXABLE,MERCHANDISE_TOTAL,METHOD,@IS_PRIMARY,REFERENCE_NUMBER,RETAIL_PRICE,SALE_PRICE,SERVICE,PRICE,STATUS,TOTAL,TOTAL_FEE_TAX,TOTAL_FG_TAX,TOTAL_ITEM_TAX,TOTAL_TAX,TYPE,ADDRESS_ID,FULFILLMENT_OPTION_ID,ORDER_ID,PERSONAL_MESSAGE_ID,PHONE_ID) SET SHIPPING_PRICE_TAXABLE = CAST(@SHIPPING_PRICE_TAXABLE AS UNSIGNED), IS_PRIMARY = CAST(@IS_PRIMARY AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/fg_item.csv' INTO TABLE BLC_FULFILLMENT_GROUP_ITEM FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_GROUP_ITEM_ID,FULFILLMENT_GROUP_ID,ORDER_ITEM_ID,QUANTITY,STATUS,TOTAL_ITEM_TAX);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/tax_detail.csv' INTO TABLE BLC_TAX_DETAIL FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (TAX_DETAIL_ID,TYPE,AMOUNT,RATE,CURRENCY_CODE);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/fg_item_tax_xref.csv' INTO TABLE BLC_FG_ITEM_TAX_XREF FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (FULFILLMENT_GROUP_ITEM_ID,TAX_DETAIL_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/payment.csv' INTO TABLE BLC_ORDER_PAYMENT FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PAYMENT_ID,AMOUNT,CUSTOMER_IP_ADDRESS,REFERENCE_NUMBER,PAYMENT_TYPE,ADDRESS_ID,ORDER_ID,PHONE_ID);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/payment_log.csv' INTO TABLE BLC_PAYMENT_LOG FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PAYMENT_LOG_ID,AMOUNT_PAID,EXCEPTION_MESSAGE,LOG_TYPE,ORDER_PAYMENT_ID,PAYMENT_INFO_REFERENCE_NUMBER,@TRANSACTION_SUCCESS,TRANSACTION_TIMESTAMP,TRANSACTION_TYPE,USER_NAME,CURRENCY_CODE,CUSTOMER_ID) set TRANSACTION_SUCCESS = CAST(@TRANSACTION_SUCCESS AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/payment_response.csv' INTO TABLE BLC_PAYMENT_RESPONSE_ITEM FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PAYMENT_RESPONSE_ITEM_ID,AMOUNT_PAID,AUTHORIZATION_CODE,AVS_CODE,IMPLEMENTOR_RESPONSE_CODE,IMPLEMENTOR_RESPONSE_TEXT,MIDDLEWARE_RESPONSE_CODE,MIDDLEWARE_RESPONSE_TEXT,ORDER_PAYMENT_ID,PAYMENT_INFO_REFERENCE_NUMBER,PROCESSOR_RESPONSE_CODE,PROCESSOR_RESPONSE_TEXT,REFERENCE_NUMBER,REMAINING_BALANCE,TRANSACTION_ID,@TRANSACTION_SUCCESS,TRANSACTION_TIMESTAMP,TRANSACTION_TYPE,USER_NAME,CURRENCY_CODE,CUSTOMER_ID) set TRANSACTION_SUCCESS = CAST(@TRANSACTION_SUCCESS AS UNSIGNED);

LOAD DATA INFILE '${data.directory}/data/setup/generated/order/payment_info_add.csv' INTO TABLE BLC_PAYINFO_ADDITIONAL_FIELDS FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (PAYMENT_ID,FIELD_VALUE,FIELD_NAME);