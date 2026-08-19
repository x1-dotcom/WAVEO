<?php
require __DIR__.'/../../lib/core.php';$in=x1_input_json();x1_api_log('getPremiumCheckoutConfig','success',200,['locale'=>(string)($in['locale']??'')]);x1_callable_json(x1_checkout_payload());