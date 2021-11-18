SELECT n_name, SUM(l_extendedprice * (1 - l_discount)) AS revenue
FROM customer, orders, lineitem, supplier, nation, region
WHERE  c_custkey = o_custkey
   AND c_nationkey = s_nationkey
   AND s_nationkey = n_nationkey
   AND n_regionkey = r_regionkey
   AND l_orderkey = o_orderkey
   AND l_suppkey = s_suppkey
   AND r_name = 'ASIA'
   AND o_orderdate >= '1994-1-1'
   AND o_orderdate < DATEADD(year, 1, '1994-1-1')
GROUP BY n_name
ORDER BY revenue DESC