SELECT s_name, SUM(l_extendedprice * (1 - l_discount)) AS revenue
FROM  lineitem, supplier
WHERE l_suppkey = s_suppkey
GROUP BY s_name
ORDER BY revenue DESC