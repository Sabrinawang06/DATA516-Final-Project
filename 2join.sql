SELECT s_name, L_Quantity
FROM  lineitem, supplier
WHERE l_suppkey = s_suppkey
