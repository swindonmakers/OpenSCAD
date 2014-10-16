

// simple example of a for loop, defining two circles along the x-axis

for (i=[0,1])  // i takes on two values, 0 and 1
	translate([i * 20, 0, 0])  //  this translates the circle along x, depending on the i value
	circle(r=5);	// a circle of radius = 5
	
	
// this example adds a few more values to show they can be non-contiguous
// the circles are laid out along the y-axis

for (i=[1, 3, 4, 5])  // i takes on four values, 1, 3, 4 and 5
	color("red")  // color the circles red for clarity
	translate([0, i * 10, 0])  //  this translates the circle along y, depending on the i value
	circle(r=5);	// a circle of radius = 5
	
	
// this example shows using a range of values
// the circles lies along negative x axis
	
for (i=[1:4])  // i takes on four values, 1, 2, 3 and 4
	color("green")  // color the circles green for clarity
	translate([-i * 10, 0])  //  this translates the circle along y, depending on the i value
	circle(r=5);