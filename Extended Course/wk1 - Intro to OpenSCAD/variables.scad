

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
	
	
// you can also define multi-dimensional arrays:

2DArray = [
	[0, 0, 1],
	[0, 1, 0],
	[1, 0, 0]
];

// and then use them to do fun stuff...

// translate this example off along x-
translate([-100, 0, 0]) {
	
	// loop over the array:
	for (y=[0:2], x=[0:2])
		// position the parts in a grid using the x and y values
		translate([x * 10, -y * 10, 0])
		// mirror vertically the part based on the value in the array
		mirror([ 0, 0, 2DArray[y][x] ])	
		// the part is just a tapered cylinder
		cylinder(r1=5, r2=0, h=10);
}


// variables, and arrays, can also contains strings (text)
// in this example, named colors and RGB colors are both
// stored in an array and used with a variant of the 2D array example above

2DArrayOfColors = [
	["red",        "green",     "blue"],
	[ [1.0, 0, 0], [0, 1.0, 0], [0, 0, 1.0] ],
	[ [0.5, 1, 0], [1, 0.5, 0], [1, 0, 0.5] ],
];

// translate this example off along x- and y-
translate([-100, -50, 0]) {
	
	// loop over the array:
	for (y=[0:2], x=[0:2])
		// position the parts in a grid using the x and y values
		translate([x * 10, -y * 10, 0])
		// mirror vertically the part based on the value in the array
		mirror([ 0, 0, 2DArray[y][x] ])	
		// get the color from the color array
		color( 2DArrayOfColors[y][x] )
		// the part is just a tapered cylinder
		cylinder(r1=5, r2=0, h=10);
}


