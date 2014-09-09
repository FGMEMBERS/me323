toggle_fdoor = func {
  if(getprop("/controls/gear/fdoor-pos-norm") > 0) {
    interpolate("/controls/gear/fdoor-pos-norm", 0, 10);
  } else {
    interpolate("/controls/gear/fdoor-pos-norm", 1, 10);
  }
}


toggle_rdoor = func {
  if(getprop("/controls/gear/rdoor-pos-norm") > 0) {
    interpolate("/controls/gear/rdoor-pos-norm", 0, 3);
  } else {
    interpolate("/controls/gear/rdoor-pos-norm", 1, 3);
  }
}


nextPosition = func {
    if (getprop('/sim/current-view/view-number') == 6) {
        if ( (currentPosition+1) < size(positionData) ) {
            currentPosition = currentPosition + 1;
        } else {
            currentPosition = 0;
        }
        setprop('/sim/current-view/x-offset-m',  positionData[currentPosition][1]);
        setprop('/sim/current-view/y-offset-m',  positionData[currentPosition][2]);
        setprop('/sim/current-view/z-offset-m',  positionData[currentPosition][3]);
    }
}

### Interior view data y,z,x
    currentPosition = 0;
    positionData = [
    ["Radi Op." ,  0.2,   2.2,  6.2],
    ["left Wing", -6.5,   2.0,  6.7],
    ["Front"    ,  1.3,  -0.4,  2.5],
    ["Mid"      , -1.3,  -0.7,  8.4],
    ["Rear"     , -0.5,  -0.2,  15.7],
    ];
