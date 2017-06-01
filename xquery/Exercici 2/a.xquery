let $factures := doc("facturacio.xml")//factura
for $factura in $factures
return 
	if($factura/rebut/totalrebut > 500) then
		$factura//nom
	else ()