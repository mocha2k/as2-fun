// used on the "playButt" instance on the first frame
// also this can be done better probably but if it works it works :sob:
onClipEvent(load) {
	stop();
}
on (rollOver)
{
	gotoAndStop(2);
}
on (rollOut)
{
	gotoAndStop(1);
}
on (press) {
    gotoAndStop(3);

    var timer:Number = setInterval(function() {
        _root.gotoAndStop(2);
        clearInterval(timer);
    }, 1000);
}