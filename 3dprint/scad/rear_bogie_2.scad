difference(){
union(){
translate([0,35.35,10])cylinder(d=8,h=8,$fn=60);
translate([0,35.35,10])rotate([0,0,23.2])
translate([0,-4,0])cube([70,8,8]);
}
translate([0,35.35,9])cylinder(d=3,h=10,$fn=60);
translate([0,35.35,9])
rotate([0,0,23.2])translate([15,0,0])
cylinder(d=3,h=10,$fn=60);
}

translate([67.68,65,10])
difference(){
cylinder(d=18,h=12,$fn=60);
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
}

translate([63.68,69,10])
difference(){
union(){
cube([8,20,8]);
translate([4,20,0])cylinder(d=8,h=8,$fn=30);
}
translate([-2,18,4])
rotate([0,90,0])
cylinder(d=3,h=12,$fn=12);
}

translate([135.4,35.35,10])rotate([0,0,156.8])
translate([8,-4,0])cube([60,8,8]);
translate([135.35,35.35,10])
difference(){
cylinder(d=18,h=12,$fn=60);
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
}