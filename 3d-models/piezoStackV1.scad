
piezoDiameter  = 12;
piezoClearance = 3;
elementH = 1;
piezoH = 0.4;
eps = 0.01;
connectorW = 1;

module hole()
{
  translate([piezoDiameter/2 - 10*eps, -connectorW/2,-eps])
  cube([piezoClearance,connectorW,elementH+2*eps]);  
}

difference()
{
cylinder(d=piezoDiameter + piezoClearance, 
         h=elementH, $fn=500);

    union()
    {
        translate([0,0,elementH - piezoH])
        cylinder(d=piezoDiameter, h=piezoH + eps, $fn=500);

        translate([0,0,-eps])
        cylinder(d=10, h=elementH+eps, $fn=500); 
        
        for(i = [0:45:360])
        {
            rotate(i, [0,0,1])
            hole();
        }
    }
}

