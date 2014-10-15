// Head
difference() {
	// Head
	translate([10,0,0])
		circle(r=5);
		
	// Right eye
	// Using the debug modifier "#" to highlight this element in the viewer
	#translate([11,2,0])
		circle(r=1);
	
	// Left eye
	#translate([11,-2,0])
		circle(r=1);
		
	// mouth
	intersection() {
		translate([10,0,0])
			circle(r=3);
			
		translate([8,0,0])
			square([2,8], center=true);
		
	}
}

// Body
union() {
	// right arm
	rotate([0,0,45])
		square([10,5]);

	// right side
	mirror([1,0,0])
		square([10,5]);
	
	// left arm
	mirror([0,1,0])
		rotate([0,0,45])
		square([10,5]);
	
	// left side
	mirror([0,1,0])
		mirror([1,0,0])
		square([10,5]);
}