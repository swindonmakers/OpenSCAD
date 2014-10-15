
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
