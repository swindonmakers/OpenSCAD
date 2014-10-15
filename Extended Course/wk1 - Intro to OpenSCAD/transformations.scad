translate([10,0,0])
	circle(r=5);

rotate([0,0,45])
	square([10,5]);


mirror([1,0,0])
	square([10,5]);
	
mirror([0,1,0])
	rotate([0,0,45])
	square([10,5]);
	
mirror([0,1,0])
	mirror([1,0,0])
	square([10,5]);