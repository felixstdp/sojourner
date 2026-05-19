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
