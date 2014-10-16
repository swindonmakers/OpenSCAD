

// Big disc, now using variables

DiscDiamater = 100;
DiscRadius = DiscDiamater / 2;
DiscThickness = 5;
NumberOfHoles = 10;
HoleInset = 10;
HoleDiameter = 10;
HoleRadius = HoleDiameter / 2;

linear_extrude(DiscThickness)
	difference() {
		// the big circle
		circle(DiscRadius);
		
		// holes round the edge, formed using a for loop
		for (i=[0:NumberOfHoles-1])  // the colon specifies this is a range
			rotate([0, 0, i* 360/NumberOfHoles]) 
			translate([DiscRadius - HoleInset, 0, 0])
			circle(HoleRadius);
	}




// A more complex example, showing use of arrays in variables

HolesAtSpecificAngles 	= 3;
HoleAngles 				= [30, 72, 191];
HoleDiameters 			= [5, 10, 15];

translate([DiscDiamater + 10, 0, 0]) // translate this example off along x+
	linear_extrude(DiscThickness)
	difference() {
		// the big circle
		circle(DiscRadius);
		
		// 
		for (i=[0:HolesAtSpecificAngles-1]) 
			rotate([0, 0, HoleAngles[i] ])  // using the loop index i to access the array of specific angles
			translate([DiscRadius - HoleInset, 0, 0])
			circle( HoleDiameters[i] / 2 );
	}