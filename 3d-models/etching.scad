
plateWidthX = 70;
plateWidthY = 70;
plateHeight = 2;

px = 0.5;   // percent of x 
py = 0.85;  // percent of y


mainColumnDiameter=8;
columnHeight=35;
columnDiameter=4;
ColumnToTipDistance=10;


connectorLength=23;
connectorHeight=30;
connectorDiameter=3.5;


circleDiameter = 5;
clearanceDiameter=0.1;
basicWireDiameter = 1.1;
wireDiameter = basicWireDiameter + clearanceDiameter;


debugTipLength=4;
debugTipDiameter=0.9; // realistic is diameter ( or radius ) 0.089mm



debugConnectorShow = false;
debugTipShow       = false;
debugShowWire      = false;

module connector()
{
    translate([px * plateWidthX, 
               py * plateWidthY +4, connectorHeight])
    rotate(90,[1,0,0])
    color("red")
    cylinder(d=connectorDiameter, h=connectorLength, $fn=100);
}

module wire()
{
   translate([px * plateWidthX,       
              py * plateWidthY - (connectorLength - mainColumnDiameter/2),
              connectorHeight-debugTipLength])
    union()
    {
        rotate_extrude(convexity = 10, $fn = 100)
        translate([circleDiameter/2 + wireDiameter/2, 0, 0])
        circle(d = wireDiameter,  $fn = 100);
        wireLength= ColumnToTipDistance+wireDiameter;

        translate([circleDiameter/2 + wireDiameter/2,0, 0])
        rotate(90,[0,1,0])
        cylinder(d=wireDiameter, h= wireLength, $fn=100);

        translate([-circleDiameter/2 - wireDiameter/2,0, 0])
        rotate(-90,[0,1,0])
        cylinder(d=wireDiameter, h=wireLength, $fn=100);
    } 
}


difference()
{
    
union()
{
cube([plateWidthX, plateWidthY, plateHeight]);

color("blue")
translate([px * plateWidthX,       
           py * plateWidthY, 0])
cylinder(d=mainColumnDiameter,h=columnHeight, $fn=100);


color("blue")
translate([px * plateWidthX-columnDiameter/2 - ColumnToTipDistance,       
           py * plateWidthY - (connectorLength - mainColumnDiameter/2), 0])
cylinder(d=columnDiameter,h=columnHeight, $fn=100);


color("blue")
translate([px * plateWidthX + columnDiameter/2 + ColumnToTipDistance,       
           py * plateWidthY - (connectorLength - mainColumnDiameter/2), 0])
cylinder(d=columnDiameter,h=columnHeight, $fn=100);
}
 connector();
 wire();
}

if (debugConnectorShow)
{
    connector();
}

if (debugTipShow)
{
color("green")
translate([px * plateWidthX,       
           py * plateWidthY - (connectorLength - mainColumnDiameter/2), connectorHeight-debugTipLength])
cylinder(d=debugTipDiameter,h=debugTipLength, $fn=100);
}


if (debugShowWire)
{
    wire();
}