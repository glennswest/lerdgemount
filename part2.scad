use <lerdgemount.scad>;


module part2()
{
    difference(){
      assembly();
      translate([-45.1,-45-6,-.1]) cube([45.1,97,22]); 
      }
}    

part2();