rotate([0,0,180])wheel_bracket();

difference(){
union(){
translate([-4,10,0])cube([8,25.35,8]);
translate([0,35.35,0])cylinder(d=8,h=9,$fn=60);
translate([0,35.35,0])rotate([0,0,23.2])
translate([0,-4,0])cube([15,8,9]);
translate([0,35.35,0])rotate([0,0,23.2])
translate([15,0,0])cylinder(d=8,h=9,$fn=60);
}
translate([0,35.35,-1])cylinder(d=3,h=11,$fn=60);
translate([0,35.35,-1])
rotate([0,0,23.2])translate([15,0,0])
cylinder(d=3,h=11,$fn=60);
}

module wheel_bracket(){
    difference(){
translate([-8,-11,0])cube([16,22,15]);
difference(){
    translate([0,0,-1])cylinder(d=12.2,h=25,$fn=60);
    translate([6.1,0,-1])cube([2,16,40],center=true);
    translate([-6.1,0,-1])cube([2,16,40],center=true);
}
translate([-1,0,-1])cube([2,22,25]);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.2,h=21,$fn=12);
translate([-9,8,7.5])rotate([0,90,0])
cylinder(d=2.8,h=10,$fn=12);
}
}