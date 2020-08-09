piezoDiameter  = 12.1;
clearanceWidth = 1.5;
piezoHeight    = 0.8;    // ! be carefull about 3D printer resolution
dr             = 0.6;
deps           = 0.1;
cubeHeight     = 10; 
sphereFn       = 100;
circleFn       = 100;
holeSize       = 2;
middle         = true;


piezoRadius = piezoDiameter / 2.;
cubeWidth  = 2 * piezoDiameter + 4 * clearanceWidth;

difference()
{
    cube([cubeWidth, cubeWidth,cubeHeight]);
    
  union()
  {

    /*
     * spherical places with "sockets" for piezoelectric disks
     */
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
    
    
    
    /**
     ** rectangular places for cables
     **/
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
    if(middle)
    {
    translate([cubeWidth/2 - holeSize/2, 
               -deps, 
               -holeSize + cubeHeight + deps])
    cube([holeSize, cubeWidth+2*deps, holeSize]);
    }
        
    
    translate([-deps,
               piezoRadius+clearanceWidth-holeSize/2,  
               -holeSize + cubeHeight + deps])
    cube([cubeWidth+2*deps,holeSize, holeSize]);
    translate([-deps,
               cubeWidth-holeSize/2-piezoRadius-clearanceWidth, 
               -holeSize + cubeHeight + deps])
    cube([cubeWidth+2*deps,holeSize, holeSize]);   
    if (middle)
    { 
        translate([-deps,
               cubeWidth/2-holeSize/2, 
               -holeSize + cubeHeight + deps])
    cube([cubeWidth+2*deps,holeSize, holeSize]);
    }
    
    
    }
  } 
}

