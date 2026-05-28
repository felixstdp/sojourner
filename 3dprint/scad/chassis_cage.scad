translate([30,-47,57])
union(){
difference(){
cube([140,94,40]);
translate([120,-1,20])cube([21,100,21]);
translate([1.5,1.5,-1])cube([117,91,42]);
translate([-30,47,-57])
rotate([90,0,0])translate([67.68,65,-100])
cylinder(d=6.1,h=200,$fn=30);
}
difference(){
union(){
translate([110,84,0])cube([10,10,40]);
translate([110,0,0])cube([10,10,40]);
}
translate([108.5,82.5,-1])cube([10,10,30]);
translate([108.5,1.5,-1])cube([10,10,30]);

translate([115,5,28])cylinder(d=3,h=14,$fn=12);
translate([115,89,28])cylinder(d=3,h=14,$fn=12);

rotate([90,0,0])translate([67.68,65,-100])
cylinder(d=6.1,h=200,$fn=30);
}
}

difference(){
rotate([90,0,0])
{
translate([67.68,65,47])chassis();
mirror([0,0,1])
translate([67.68,65,47])chassis();
}
translate([0,-100,0])cube([300,200,57]);
}
 
module chassis(){
difference(){
union(){
cylinder(d=18,h=12,$fn=60);
translate([0,19,0])rotate([0,0,-90])
difference(){
cylinder(d=48,h=8,$fn=3);
translate([0,0,-1])cylinder(d=28,h=20,$fn=3);
}
}
translate([0,0,-1])cylinder(d=6.1,h=20,$fn=30);
}

difference(){
translate([-28,26,0])cube([56,6,8]);
translate([23,0,4])rotate([-90,0,0])
cylinder(d=3,h=50,$fn=12);
translate([-23,0,4])rotate([-90,0,0])
cylinder(d=3,h=50,$fn=12);
}
}
