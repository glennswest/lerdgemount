use <MCAD/nuts_and_bolts.scad>;

module bolt(thesize,thelength)
{
 boltHole(thesize+.2,length=thelength);   
 %boltHole(thesize+.2,length=thelength);   
}
module board()
{
      difference(){
         translate([-45,-45,0]) cube([90,90,5]);  
         translate([-45+6,-45+6,-5]) bolt(3,12);
         translate([ 45-6,-45+6,-5]) bolt(3,12);
         translate([-45+6, 45-6,-5]) bolt(3,12);
         translate([ 45-6, 45-6,-5]) bolt(3,12); 
         translate([0,0,-5]) cylinder(r=35,h=20);      
        translate([-15+6, 45-6,-5]) bolt(3,12);
        translate([ 15-6, 45-6,-5]) bolt(3,12);  
         translate([-15+6, -45+6,-5]) bolt(3,12);
         translate([ 15-6, -45+6,-5]) bolt(3,12);   
         }
}

module mount()
{
    translate([-45,-45-5,0]) cube([90,5,15+5]);
    
}

module themount()
{
  board();
  mount();
}

module assembly()
{
    difference(){
        themount();
        translate([-15, 45-15,0])  cube([30,15,2.5]);
        translate([-15,-45-10,0])  cube([30,15+10,2.5]);
         translate([-45+6, -45, 5+7.5]) rotate([90,0,0])  bolt(3,12);
         translate([ 45-6, -45, 5+7.5]) rotate([90,0,0])  bolt(3,12);  
         translate([-15+6, -45, 5+7.5]) rotate([90,0,0]) bolt(3,12);
         translate([ 15-6, -45, 5+7.5]) rotate([90,0,0]) bolt(3,12);   
        }
}

module bridge_upper()
{
    difference(){
       translate([-15, 45-15,0])  cube([30,15,2.5]);
       translate([0,0,-5]) cylinder(r=35,h=20);
       translate([-15+6, 45-6,-5]) bolt(3,12);
       translate([ 15-6, 45-6,-5]) bolt(3,12); 
       translate([-15+6, 45-6,2]) nutHole(3);
       translate([ 15-6, 45-6,2]) nutHole(3);  
       }
}

module bridge_lower()
{
    difference(){
       translate([-15,-45-10,0])  cube([30,15+10,2.5]); 
       translate([0,0,-5]) cylinder(r=35,h=20);
       translate([-15+6, -45, -5]) bolt(3,12);
       translate([ 15-6, -45, -5]) bolt(3,12); 
       translate([-15+6, -45, 2]) nutHole(3.2);
       translate([ 15-6, -45, 2]) nutHole(3.2);    
       }
}

