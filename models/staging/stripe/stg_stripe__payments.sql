    select
    	id as payment_id,
	    ORDERID as order_id,
	    PAYMENTMETHOD as payment_method,
	    STATUS,
        -- amount is stored in cents, convert it to dollars
	    amount / 100 as amount,
	    CREATED as created_at,
from raw.stripe.payment