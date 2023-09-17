"use strict";
;
var days;
(function (days) {
    days[days["monday"] = 0] = "monday";
    days[days["tuesday"] = 1] = "tuesday";
    days[days["wednesday"] = 22] = "wednesday";
    days[days["thursday"] = 23] = "thursday";
    days[days["friday"] = 24] = "friday";
    days[days["saturday"] = 25] = "saturday";
    days[days["sunday"] = 26] = "sunday";
})(days || (days = {}));
;
function say_hello(name) {
    console.log("hello man how are you " + name);
    console.log(`today is ${days.friday}`);
}
