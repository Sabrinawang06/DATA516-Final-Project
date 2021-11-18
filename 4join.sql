SELECT N_Name,  O_TotalPrice, L_Quantity, S_Name 
FROM  orders, lineitem, supplier, nation
WHERE  s_nationkey = n_nationkey
   AND l_orderkey = o_orderkey
   AND l_suppkey = s_suppkey
   AND o_orderdate >= '1994-1-1'
   AND o_orderdate < DATEADD(year, 1, '1994-1-1')
