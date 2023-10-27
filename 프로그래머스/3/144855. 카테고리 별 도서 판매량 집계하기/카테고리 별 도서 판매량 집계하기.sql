-- 코드를 입력하세요
WITH sale_info AS (
    SELECT book_id
         , SUM(sales) as sales_by_book
    FROM book_sales
    WHERE sales_date BETWEEN '2022-01-01' AND '2022-01-31'
    GROUP BY book_id
)

SELECT CATEGORY
     , SUM(sale_info.sales_by_book) AS TOTAL_SALES
FROM book
    JOIN sale_info ON book.book_id = sale_info.book_id
GROUP BY CATEGORY
ORDER BY CATEGORY
