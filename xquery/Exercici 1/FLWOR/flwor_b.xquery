let $numSala := "2"
let $preuBall := "35"

for $ball in doc("../balls.xml")//ball[./sala/text() = $numSala][./preu[@moneda="euro"]]
where $ball/preu < $preuBall
return $ball