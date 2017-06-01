<html>
<body>
<table border="1">
<tr>
	<td>Nom</td>
	<td>Professor</td>
	<td>Places</td>
</tr>
{
let $balls := doc("../balls.xml")//ball
let $profe := ./professor/text()
let $places := ./places/text()
for $ball in $balls[preu[@quota="trimestral"]]
order by $ball/places
return 
	<tr>
		<td>{$ball/nom/text()}</td>
		<td>{$ball/professor/text()}</td>
		<td>{$ball/places/text()}</td>
	</tr>
}
</table>
</body>
</html>