%translate([0,-75,97.5])cube([200,150,3]);

rotate([90,0,0])
{
translate([0,0,50])rearbogie1();
translate([0,0,50])rearbogie2();
translate([100,0,50])frontbogie();
translate([0,0,90])mirror([0,0,1])wheel();
translate([100,0,90])mirror([0,0,1])wheel();
translate([200,0,90])mirror([0,0,1])wheel();

mirror([0,0,1]){
translate([0,0,50])rearbogie1();
translate([0,0,50])rearbogie2();
translate([100,0,50])frontbogie();
translate([0,0,90])mirror([0,0,1])wheel();
translate([100,0,90])mirror([0,0,1])wheel();
translate([200,0,90])mirror([0,0,1])wheel();
}
} 
translate([10,0,84])stabilizing_bar();

translate([40,63.5,88])
rotate([0,90,0])rod();
translate([40,-63.5,88])
rotate([0,90,0])rod();

chassis_cage();

module chassis_cage(){
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
}

module rod(){
difference(){
cylinder(d=10,h=35,center=true,$fn=6);
cylinder(d=2.2,h=40,center=true,$fn=12);
}
cylinder(d=2.2,h=15,center=true,$fn=12);
}

module rearbogie1(){
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
}


module rearbogie2(){
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
}

module frontbogie(){
translate([43.35,31.35,0])cube([56.65,8,8]);

rotate([0,0,-45])
{
translate([0,50,0])
difference(){
cylinder(d=18,h=8,$fn=60);
translate([0,0,-1])cylinder(d=5.9,h=20,$fn=30);
}
translate([-4,10,0])cube([8,35,8]);
rotate([0,0,180])wheel_bracket();
}

translate([100,0,0])
{
translate([-4,10,0])cube([8,25.35,8]);
translate([0,35.35,0])cylinder(d=8,h=8,$fn=60);
rotate([0,0,180])wheel_bracket();
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
}

module wheel(){
difference(){
union()
{
for(i=[0:60:300])
{
    rotate([0,0,i])translate([3,-0.75,0])
    cube(size=[22,1.5,15]);
} 
cylinder(d=16,h=15,$fn=60);
}
translate([0,0,-1])cylinder(d=3,h=24,$fn=30);
}
rotate([0,0,30])translate([1,-2,0])
cube(size=[2,4,15]);

translate([0,0,16])rotate([0,90,0])
{
rotate([0,90,0])
difference(){
cylinder(r=25.5,h=32,center=true,$fn=60);
cylinder(r=24,h=36,center=true,$fn=60);
}

for(i=[0:45:315]){
rotate([i,0,0])
for(j=[-11:4:15]){
translate([j,0,25])
cylinder(d1=4,d2=0,h=2,$fn=18);
}
}

rotate([22.5,0,0])
mirror([1,0,0])
for(i=[0:45:315]){
rotate([i,0,0])
for(j=[-11:4:15]){
translate([j,0,25])
cylinder(d1=4,d2=0,h=2,$fn=18);
}
}

}
}

module stabilizing_bar(){
difference(){
union(){
hull()
{
translate([-4,64,4])rotate([0,90,0])
cylinder(d=8,h=8,$fn=24);
translate([-4,-64,4])rotate([0,90,0])
cylinder(d=8,h=8,$fn=24);
}
cylinder(d=18,h=12,$fn=60);
}
translate([-5,64,4])rotate([0,90,0])
cylinder(d=3,h=10,$fn=24);
translate([-5,-64,4])rotate([0,90,0])
cylinder(d=3,h=10,$fn=24);
translate([0,0,-1])cylinder(d=3,h=20,$fn=30);
}
}
