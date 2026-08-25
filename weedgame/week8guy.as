// used on the week8guy instance in the second frame
onClipEvent(load) {
	stop();
    weedheld = false;

    mouseListener = new Object();

    mouseListener.onMouseDown = function() {
        weedheld = true;
    };

    mouseListener.onMouseUp = function() {
        weedheld = false;
    };

    Mouse.addListener(mouseListener);
}

onClipEvent(enterFrame) {
	if (weedheld)
	{
		gotoAndStop(2);
	}
	else
	{
		var timer:Number = setInterval(function() {
			gotoAndStop(1); // reminder to hcange this to 3 when frame 3 is done
		
			clearInterval(timer);
		}, 2500);
	}
}
