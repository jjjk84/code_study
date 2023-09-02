-- 코드를 입력하세요
# SELECT DISTINCT(MILK.CART_ID)
# FROM (SELECT CART_ID
#       FROM CART_PRODUCTS
#       WHERE NAME = 'Milk') AS MILK
#       JOIN (SELECT CART_ID
#             FROM CART_PRODUCTS
#             WHERE NAME = 'Yogurt') AS YOGURT
#       ON MILK.CART_ID = YOGURT.CART_ID
# ORDER BY MILK.CART_ID;

SELECT CART_ID
FROM CART_PRODUCTS
GROUP BY CART_ID
    HAVING GROUP_CONCAT(NAME) LIKE '%Milk%'
        AND GROUP_CONCAT(NAME) LIKE '%Yogurt%'
ORDER BY CART_ID;