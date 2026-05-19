translate([-4,10,0])cube([8,25.35,8]);
translate([0,35.35,0])cylinder(d=8,h=8,$fn=60);
rotate([0,0,180])wheel_bracket();

translate([0,35.35,0])rotate([0,0,30])
translate([0,-4,0])cube([70,8,8]);
translate([135.35/2,35.35+39.07,0])
difference(){
cylinder(d=18,h=12,$fn=60);
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
}

translate([135.35/2-4,35.35+39.07+4,0])
difference(){
union(){
cube([8,20,8]);
translate([4,20,0])cylinder(d=8,h=8,$fn=30);
}
translate([-2,18,4])
rotate([0,90,0])
cylinder(d=3,h=12,$fn=12);
}


translate([135.35,35.35,0])rotate([0,0,150])
translate([8,-4,0])cube([65,8,8]);
translate([135.35,35.35,0])
difference(){
cylinder(d=18,h=8,$fn=60);
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
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
