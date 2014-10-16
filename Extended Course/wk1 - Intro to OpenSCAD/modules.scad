// This example combines aspects from all of the other wk1 lessons 
// to show you how to create a modular/reusable object.
// In this example, it's a module that creates a generic mounting plate

// The following block defines the reusable module
// The module has a number of parameters, all with default values
module MountingPlate( width=50, depth=100, thickness=5, holeInset = 8, holeRadius = 3, cornerRadius = 5) {
	// this part will be constructed such that it is centred on the origin
	// and lies on the XY plane

	linear_extrude(thickness)
		difference() {
			// create the outer shape using the hull function
			// the hull of 4 circles produces a rounded rectangle
			
			hull() {
				// use a for loop to vary two variables, x and y
				// this is equivalent to two nested for loops
				for (x=[-1,1], y=[-1,1])
					// translate the circles to the corners of the rectangle
					translate([ 
						x * (width/2 - cornerRadius),  
						y * (depth/2 - cornerRadius),
						0
					 ])
					circle(r=cornerRadius);
			}
			
			
			// subtract the mounting holes:
			// this approach uses mirroring to place the circles to illustrate
			// an alternate technique
			
			for (x=[0,1], y=[0,1])
				mirror([x,0,0]) 
				mirror([0,y,0])
				translate([   
					width/2 - holeInset,
					depth/2 - holeInset,
					0
				])  // move to the top right corner
				circle(r=holeRadius);
				
				
			// Weight Loss!!
			// finally, remove a chunk of material from the middle of plate to save on plastic
			// NB: this is not a robust example, as it relies on the depth being larger than the width
			circle(r=width / 3);
			
		}

}



// We need to "call" the module to actually see a part...   
// if we don't pass any parameters, we'll see the default plate

MountingPlate();


// We could optionally pass some, or all, of the parameters:
translate([60, 0, 0])
	color("red")
	MountingPlate(width=40, depth=40, holeInset=6);
