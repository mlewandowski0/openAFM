piezoDiameter = 12;
piezo2Diameter = 10;
piezoH  = 0.4;
piezoH2 = 0.4;
clearance = 12;
magnetDiameter=6;
magnetH = 3;
h = 3+piezoH;
heightClearance = 0.4;

wireHoleHeight = 2;
wireHoleSide   = 2;
tripodLen      = 3;
tripodDeltaH   = 1;

mid = (piezoDiameter + clearance) / 2;

showTripod     = true;
showStage      = false;
tripodCylinder = false;
   
   
  
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

module stick()
{
    if (tripodCylinder)
    {
        color("red")
        translate([mid, mid, h])
        cylinder(d=tripodLen,h=mid - h, $fn=100);
    }
    else
    {
        color("red")
        translate([mid, mid, (mid+h)/2 + tripodLen/4])
        cube([tripodLen, tripodLen, mid - h + tripodLen/2], center=true);
    }
}

module tripod()
{
    stick();
    translate([0, piezoDiameter + clearance, 0])
    rotate(90, [1,0,0])
    stick();

    translate([piezoDiameter + clearance, 0, 0])
    rotate(-90, [0,1,0])
    translate([mid, mid, 0])
    rotate(-90, [0,0,1])
    translate([-mid, -mid, 0])
    stick();
}

module stage()
{
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
}

if (showStage)
{
    stage();
}
if (showTripod)
{
    tripod();
}
