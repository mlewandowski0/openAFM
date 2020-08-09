piezoDiameter = 12;
piezo2Diameter = 10;
piezoH  = 0.4;
piezoH2 = 0.4;
clearance = 12;
magnetDiameter=6;
magnetH = 3;
h = 3+piezoH;
heightClearance = 0.4;

wireHoleHeight=2;
wireHoleSide = 2;

mid = (piezoDiameter + clearance) / 2;
   
module piezo()
{
     difference()
    {
        cube([piezoDiameter + clearance, 
              piezoDiameter + clearance, h]);
        
        translate([ mid, mid , h - piezoH])
        cylinder(d=piezoDiameter, h=piezoH, $fn=100);    

        translate([ mid, mid , h - piezoH - piezoH2])
        cylinder(d=piezo2Diameter, h=piezoH, $fn=100);    
        
        translate([mid, mid, 0])
        cylinder(d=magnetDiameter, h=magnetH, $fn=100);
        
        translate([mid - wireHoleSide/2, 
                   clearance + piezoDiameter - 10, 
                   h - wireHoleHeight - heightClearance])
        cube([wireHoleSide, 10, wireHoleSide]);
    }
}


difference()
{
union()
{
piezo();


translate([0, piezoDiameter + clearance, 0])
rotate(90, [1,0,0])
piezo();

translate([piezoDiameter + clearance, 0, 0])
rotate(-90, [0,1,0])
translate([mid, mid, 0])
rotate(-90, [0,0,1])
translate([-mid, -mid, 0])
piezo();
}
  translate([mid - wireHoleSide/2, 
             clearance + piezoDiameter - 10, 
             h - wireHoleHeight - heightClearance])
  cube([wireHoleSide, 10, wireHoleSide]);
}