for $ball in doc("../balls.xml")//ball[./preu[@quota="mensual"]]
return $ball/professor/text()