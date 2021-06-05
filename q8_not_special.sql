select count(C_CUSTKEY) from CUSTOMER
    where C_CUSTKEY not in (
        select O_CUSTKEY as C_CUSTKEY from ORDERS
            where O_COMMENT like '%special request%'
    );

