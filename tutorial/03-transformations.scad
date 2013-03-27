
// 03 - Transformations

// To move objects around in space, we can translate them
// translate takes a vector, of x,y,z

// So this cube:
cube(size=[10,10,20]);

// Can be moved along X:
translate(v=[20,0,0])
  cube(size=[10,10,20]);

// Or Y:
translate(v=[0,20,0])
  cube(size=[10,10,20]);

// Or even X and Z (we can skip ahead if you're bored):
translate(v=[20,0,40])
  cube(size=[10,10,20]);

// We can also translate two objects together by using curlies:
// Look, a badmington shuttlecock!
translate(v=[0,0,50]) {
  sphere(r=10);
  cylinder(h=30,r1=5,r2=30);
}

// Let's turn it sideways, rotate can take a number of degrees, and a vector to rotate around (default [0,0,0] which does nothing)
rotate(a=90,v=[0,1,0]) {
  translate(v=[0,0,50]) {
    sphere(r=10);
    cylinder(h=30,r1=5,r2=30);
  }
}

// Rotation is always around the axis, so to rotate "in space" do a rotation, then translate:
translate(v=[0,0,50]) {
    rotate(a=90,v=[0,1,0]) {
      sphere(r=10);
      cylinder(h=30,r1=5,r2=30);
    }
}

// Multiple items together are a union, we can also subtract intersecting parts using "difference"
// Subtract the rotated item from the original one:
# difference() {
  union() {
    sphere(r=10);
    cylinder(h=30,r1=5,r2=30);
  }
  rotate(a=90,v=[0,1,0]) {
    sphere(r=10);
    cylinder(h=30,r1=5,r2=30);
  }
}

// Note that subtracting exact faces produces uncertain results, it would be better in this case to subtract the two cylinders without the sphere.

// Let's build something now...

