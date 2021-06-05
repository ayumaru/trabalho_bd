select N_NAME, sum(L_QUANTITY) total
from CUSTOMER 
    left outer join NATION on N_NATIONKEY=C_NATIONKEY 
    left outer join ORDERS on C_CUSTKEY=O_CUSTKEY
    left outer join LINEITEM on L_ORDERKEY=O_ORDERKEY
group by N_NAME
having total > 62000 order by total desc;