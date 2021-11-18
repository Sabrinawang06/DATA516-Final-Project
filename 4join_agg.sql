SELECT n_name, SUM(l_extendedprice * (1 - l_discount)) AS revenue
FROM  orders, lineitem, supplier, nation
WHERE  s_nationkey = n_nationkey
   AND l_orderkey = o_orderkey
   AND l_suppkey = s_suppkey
   AND o_orderdate >= '1994-1-1'
   AND o_orderdate < DATEADD(year, 1, '1994-1-1')
GROUP BY n_name
ORDER BY revenue DESC