
// A cube, the 3-part array defines the length of the sides in x, y and z
// By default, the cube is position with its corner at the origin, extending along x+, y+ and z+

cube([5, 10, 15]);


// A centred cube, using the optional center=true parameter
// Disabled initially using the "*" modifier - just delete the "*" character to see the result
*cube([5, 10, 15], center=true);


// A sphere, of radius 25
// Spheres are always centred on the origin
*sphere(25);


// A cylinder, of radius = 5mm and height = 10mm
// By default, cylinders are centred on the origin, but "sit" on the XY plane
*cylinder(r=5, h=10);


// A fully centred cylinder, using the optional center=true parameter
*cylinder(r=5, h=10, center=true);


// Cylinders can also be tapered, by defining two radius values
// r1 is the radius at the base, r2 is the radius at the top
*cylinder(r1=10, r2=5, h=20);


