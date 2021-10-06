%dw 2.0
output application/java
var minutesSince = (vars.hours * 60)
---
(now() - ("PT$(minutesSince)M")) as Number