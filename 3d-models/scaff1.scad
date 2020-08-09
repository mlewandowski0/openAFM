piezoDiameter  = 12;
clearanceWidth = 1.5;
piezoHeight    = 0.5;    // ! be careful about 3D printer resolution
dr             = 0.6;
deps           = 0.1;
cubeHeight     = 10; 
sphereFn       = 100;
circleFn       = 100;
holeSize       = 2;
stickRadius    = 1;
stickThickness = 2;
heightRadius   = 100;

// debug purposes 
renderBase     = false;

piezoRadius = piezoDiameter / 2.;
cubeWidth  = 2 * piezoDiameter + 4 * clearanceWidth;
TriangleSize = cubeWidth - 2 * (piezoRadius + clearanceWidth) + 2 * stickRadius;
distance = sqrt(2) * (TriangleSize) + 2 * stickRadius * ( 1 - sqrt(2));


module drawStick()
{
 union()
{
translate([-piezoRadius - clearanceWidth,
           -piezoRadius - clearanceWidth, 0])
union()
{
translate([piezoRadius + clearanceWidth, 
           piezoRadius + clearanceWidth, 0])
cylinder(r=stickRadius, h=heightRadius, $fn=100);
translate([cubeWidth - (piezoRadius + clearanceWidth), 
           piezoRadius + clearanceWidth, 0])
cylinder(r=stickRadius, h=heightRadius, $fn=100);
translate([(piezoRadius + clearanceWidth), 
           cubeWidth - (piezoRadius + clearanceWidth), 0])
cylinder(r=stickRadius, h=heightRadius, $fn=100);
translate([cubeWidth - (piezoRadius + clearanceWidth), 
           cubeWidth - (piezoRadius + clearanceWidth), 0])
cylinder(r=stickRadius, h=heightRadius, $fn=100);
}

rotate(45, [0,0,1])
translate([-stickRadius, -stickRadius, 0])
cube([distance,2 * stickRadius, stickThickness]);

translate([0, TriangleSize - 2 * stickRadius,0])
rotate(-45, [0,0,1])
translate([-stickRadius, -stickRadius, 0])
cube([distance,2 * stickRadius, stickThickness]);
}   
}

module drawBase()
{
difference()
{
    cube([cubeWidth, cubeWidth,cubeHeight]);
    
  union()
  {


    union()
    {
    translate([clearanceWidth + piezoRadius,
               clearanceWidth + piezoRadius,
               cubeHeight])
    union()
    {
        sphere(r=piezoRadius-dr, $fn=sphereFn);
        translate([0,-0,-piezoHeight])
        cylinder(r=piezoRadius, h=piezoHeight + deps, $fn=sphereFn);
    }
    translate([cubeWidth - clearanceWidth - piezoRadius,
               clearanceWidth + piezoRadius,
               cubeHeight])
    union()
    {
        sphere(r=piezoRadius-dr, $fn=sphereFn);
        translate([0,-0,-piezoHeight])
        cylinder(r=piezoRadius, h=piezoHeight + deps, $fn=sphereFn);
    }
    translate([clearanceWidth + piezoRadius,
               cubeWidth - clearanceWidth - piezoRadius,
               cubeHeight])
    union()
    {
        sphere(r=piezoRadius-dr, $fn=sphereFn);
        translate([0,-0,-piezoHeight])
        cylinder(r=piezoRadius, h=piezoHeight + deps, $fn=sphereFn);
    }
    
    translate([cubeWidth - clearanceWidth - piezoRadius,
               cubeWidth - clearanceWidth - piezoRadius,
               cubeHeight])
    union()
    {
        sphere(r=piezoRadius-dr, $fn=sphereFn);
        translate([0,-0,-piezoHeight])
        cylinder(r=piezoRadius, h=piezoHeight + deps, $fn=sphereFn);
    }

    
    }
    
    
    

    union()
    {
    translate([piezoRadius+clearanceWidth-holeSize/2, 
               -deps, 
               -holeSize + cubeHeight + deps])
    cube([holeSize, cubeWidth+2*deps, holeSize]);
    translate([cubeWidth-holeSize/2-piezoRadius-clearanceWidth, 
               -deps, 
               -holeSize + cubeHeight + deps])
    cube([holeSize, cubeWidth+2*deps, holeSize]);

        
    
    translate([-deps,
               piezoRadius+clearanceWidth-holeSize/2,  
               -holeSize + cubeHeight + deps])
    cube([cubeWidth+2*deps,holeSize, holeSize]);
    translate([-deps,
               cubeWidth-holeSize/2-piezoRadius-clearanceWidth, 
               -holeSize + cubeHeight + deps])
    cube([cubeWidth+2*deps,holeSize, holeSize]);   

    }
  } 
}
}











if (renderBase)
{
    drawBase();
    
    translate([cubeWidth/2,cubeWidth/2,0])
    rotate(180, [1,0,0])
    translate([-TriangleSize/2+stickRadius,-TriangleSize/2+stickRadius,-100])
    drawStick();
}
else
{
    rotate(180, [1,0,0])
    translate([-TriangleSize/2+stickRadius,-TriangleSize/2+stickRadius,-100])
    drawStick();
}
