var door0 = aircraft.door.new("controls/doors/door0",25);
var door1 = aircraft.door.new("controls/doors/door0",6);
var load0 = aircraft.door.new("sim/model/Loads/Load[0]",120);


var toggle_nosedoor = func {
  if(getprop("/controls/doors/door0/position-norm") > 0) {
      door0.close();
  } else {

      door0.open();
  }
}

var toggle_reardoor = func {
  if(getprop("/controls/doors/door1/position-norm") > 0) {
      door1.close();
  } else {

      door1.open();
  }
}

var toggle_load0 = func {
  if(getprop("sim/model/Loads/Load[0]/position-norm") > 0) {
      load0.close();
  } else {

      load0.open();
  }
}

setlistener("controls/doors/door0/position-norm", func(dr0){
    setprop("sim/multiplay/generic/float",dr0.getValue() );
},1,0);
