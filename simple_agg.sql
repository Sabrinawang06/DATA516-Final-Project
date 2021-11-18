SELECT COUNT(*) as count, L_LineNumber
FROM lineitem
GROUP BY L_LineNumber
ORDER BY COUNT(*);