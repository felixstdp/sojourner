a=36.2; //measure length between drills
b=21.1;

difference(){
union(){
difference(){
minkowski(){
cube([a,b,2]);
cylinder(d=9,h=0.01,$fn=60);
}
translate([0,0,-1])cube([a,b,4]);
}
translate([0,0,0])cylinder(d=9,h=9,$fn=60);
translate([0,b,0])cylinder(d=9,h=9,$fn=60);
translate([a,0,0])cylinder(d=9,h=9,$fn=60);
translate([a,b,0])cylinder(d=9,h=9,$fn=60);
mirror([1,0,0])cube([20,b,2]);
}
translate([0,0,-1])cylinder(d=2.2,h=11,$fn=60);
translate([0,b,-1])cylinder(d=2.2,h=11,$fn=60);
translate([a,0,-1])cylinder(d=2.2,h=11,$fn=60);
translate([a,b,-1])cylinder(d=2.2,h=11,$fn=60);
}
