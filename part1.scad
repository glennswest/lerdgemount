use <lerdgemount.scad>;

module part1()
{
    difference(){
      assembly();
      translate([0,-45-6,-.1]) cube([45.1,97,22]); 
      }
}    

part1();