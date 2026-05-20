difference(){
union(){
cylinder(d=18,h=12,$fn=60);
translate([0,19,0])rotate([0,0,-90])
difference(){
cylinder(d=48,h=12,$fn=3);
translate([0,0,-1])cylinder(d=28,h=20,$fn=3);
}
}
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
}

difference(){
translate([-28,26,0])cube([56,6,12]);
translate([23,0,6])rotate([-90,0,0])
cylinder(d=3,h=50,$fn=12);
translate([-23,0,6])rotate([-90,0,0])
cylinder(d=3,h=50,$fn=12);
}


