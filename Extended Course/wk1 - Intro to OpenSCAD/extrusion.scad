
// An extruded pill
linear_extrude(10)
	hull() {
		translate([10, 0, 0])
			circle(r=5);

		translate([-10, 0, 0])
			circle(r=5);
	}
	
	

// An extruded pill with holes in
*linear_extrude(10)
	difference() {
		// the pill shape
		hull() {
			translate([10, 0, 0])
				circle(r=5);

			translate([-10, 0, 0])
				circle(r=5);
		}
		
		// some holes
		translate([10, 0, 0])
			circle(r=3);
			
		translate([-10, 0, 0])
			circle(r=3);
	}
	
	
// A big disc with a bunch of holes punched round the edge
linear_extrude(5)
	difference() {
		// the big circle, radius = 50mm
		circle(50);
		
		// 10 holes round the edge, formed using a for loop
		for (i=[0:9])  // the colon specifies this is a range
			rotate([0, 0, i* 360/10]) 
			translate([40, 0, 0])
			circle(5);
	}
