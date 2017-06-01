let $salaBall := "1"
for $ball in doc("../balls.xml")//ball[./sala/text() = $salaBall]
return $ball