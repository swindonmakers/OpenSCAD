// 02 - Shapes

// Cubes are not just square, they have x,y,z sides
// [..,..] is a vector in openscad (similar to an array elsewhere)
cube(size=[10,20,30]);

// Spheres are, well, round and have a radius size
sphere(r=10);

// To see which item we just drew, we can use # to highlight it:
# sphere(r=15);

// The resolution is fairly rough by default, to get a smoother one, change $fn, you can do this globally, or per object:
sphere(r=15, $fn=100);

// We can colour the objects (only for the preview, not the STL)
// And also stack/scope functions

color("blue")
  cube(size=[10,20,30]);

// A cylinder has height (h) and radius (r):
cylinder(h=35,r=10);

// It can also be a cone by using two radii: r1 and r2:
cylinder(h=50,r1=5,r2=40);

// Polyhedrons, now it gets complicated!
// Provide a list of points [x,y,z] and a list of triangles [n,m,o] connecting the points (0-based index)
// I borrowed this example from the manual!

polyhedron(
  points=[ [30,30,0],[30,-30,0],[-30,-30,0],[-30,30,0], // the four points at base
           [0,0,30]  ],                                 // the apex point 
  triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],          // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );

// What a mess, lets look at how to move things around..
