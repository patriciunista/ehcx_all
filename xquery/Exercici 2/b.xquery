let $factures := doc("facturacio.xml")//factura
for $factura in $factures
where $factura//producte[descripcio = "Porquet de xocolata"]
return 
	$factura