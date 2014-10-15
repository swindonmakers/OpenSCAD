// 04 - A meeple
// A meeple is a person-shaped playing piece for board games

// Adjust for more roundiness:
$fn=25;

module body() {
  union() {
  // First we need a head:
    translate([0,0,15])
      sphere(r=5);

  // and a body:
    cylinder(h=15, r1=10, r2=1);
  }
}

// Save it for later by making it a module.
// (we're not calling it yet so reloading makes it disappear)

// Let's display it for reference:
translate([0,0,7])
  body();

// Create a leg, then attach a foot.

module leg() {
  // A leg:
  cylinder(h=7,r=3);

  // Foot
  difference() {
    union() {
    // First a cylinder along the X-axis
      rotate(a=90,v=[0,1,0])
        cylinder(h=5,r=3);
    // Then round the end with a sphere:
    translate([5,0,0])
      sphere(r=3);
    }

  // Level off the bottom by subtracting a larger cube:
  #  translate([-5,-7,-14])
       cube(size=14);
  }
}
// Wrap it in a module so that we can create two easily
// Then duplicate either side of the Y axis:

translate([0,3,0])
  leg();
translate([0,-3,0])
  leg();

// All we need now are arms, grey the legs for a moment using % (or just comment them out)
// The arms are more cylinders with spheres on each end:
/*
module arm() {
  cylinder(h=6, r=2.5);
  sphere(r=2.5);
  translate([0,0,6])
    sphere(r=2.5);
}
*/

// I want the the arm alongside the body:
// Angle the arm outwards.

// We want the top (end of arm) to be two thirds up the body cone
// height of body (7) + two thirds (10) - length of arm(6)
// For the distance along y (out alongside the cone), I just start guessing... 
// Move this code into the arm module.
module arm() {
  translate([0,8,11])
    rotate(a=45,v=[1,0,0])
      union() {
        cylinder(h=6, r=2.5);
        sphere(r=2.5,$fn=50);
        translate([0,0,6])
          sphere(r=2.5,$fn=50);
      }
}

// Now we draw two, and just mirror the second one:
arm();
mirror([0,1,0])
  arm();


// Tada!

