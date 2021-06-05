select N_NAME, count(O_ORDERKEY) total
from CUSTOMER 
    left outer join NATION on N_NATIONKEY=C_NATIONKEY 
    left outer join ORDERS on C_CUSTKEY=O_CUSTKEY
group by N_NAME
order by total desc;