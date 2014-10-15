// A simple pill shape, formed by hulling two circles
hull() {
	translate([10, 0, 0])
		circle(r=5);

	translate([-10, 0, 0])
		circle(r=5);
}



*hull() {
	square([10,30]);
	
	circle(r=15);
}

