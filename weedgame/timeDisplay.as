// Used on the second frame
stop();
_root.totalSeconds = 200; // 3 mins and 20 secs (I think) 

countdown = function() {
    _root.totalSeconds--;
    
    if (_root.totalSeconds <= 0) {
        _root.totalSeconds = 0;
        clearInterval(countdownInterval);
    }

    var minutes = Math.floor(_root.totalSeconds / 60);
    var seconds = _root.totalSeconds % 60;
    var displaySeconds = (seconds < 10) ? "0" + seconds : seconds;
    _root.timeDisplay.text = minutes + ":" + displaySeconds;
}

countdownInterval = setInterval(countdown, 1000);