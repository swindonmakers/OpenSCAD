

// OpenSCAD supports two types of conditional statement:
//   the "if" statement and the conditional assignment operator "?"

// NB: like all OpenSCAD statements, these are evaluated at compile time



// Here's an example of a simple if statement within a loop

for (i=[1:10])
	if (i < 5)   // if i is less than 5
	translate([i*10, 0, 0])
	color("red")
	circle(r=i);


// and a few more simple examples showing different comparison operators
	
for (i=[1:10])
	if (i >= 5)   // i is greater than or equal to
	translate([0, i*10, 0])
	color("blue")
	circle(r=i);
	
for (i=[1:10])
	if (i != 5)   // i is not equal to
	translate([-i*10, 0, 0])
	color("orange")
	circle(r=i);

for (i=[1:10])
	if (i > 2 && i < 7)     /// i is greater than 2 and less than 7
	translate([0, -i*10, 0])
	color("green")
	circle(r=i);	




// here's an example of the conditional assignment operator
// see what happens when you change the value of variable1 to 5 or 15

variable1 = 10;

// this is the conditional assignment:
variable2 = variable1 < 10 ? 45 : 0;

// "variable1 < 10" is the comparison
// "?" is the conditional assignment operator
// "45" is the value to assign if the comparison is true
// "0"  is the value to assign if the comparison is false

rotate([0, 0, variable2])
	square([variable1, variable1], center=true);
	
	
	
// you can use conditional assignment anywhere in your code
// here's an equivalent example, but without using an intermediate variable

*rotate([0, 0, variable1 < 10 ? 45 : 0 ]) 
	square([variable1, variable1], center=true);


	