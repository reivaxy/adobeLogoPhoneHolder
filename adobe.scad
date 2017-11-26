// Adobe logo phone stand.

logoWidth = 50;
logoHeight = 0.85883 * logoWidth;

cubeBase = 1.4 * logoWidth;  // use higher factor to make stronger corner bases
cubeHeight = 1.2 * logoWidth;  // Use higher factore for thicker cube base

logoOffset = logoWidth + 2; // don't touch this

logo();

module logo() {
  difference() {
    cube([cubeBase, cubeHeight, cubeBase]);
    translate([(cubeBase - logoWidth)/2, cubeHeight - logoHeight, -logoOffset/2])
      A3D();
    translate([-logoOffset/2, cubeHeight - logoHeight, logoWidth + (cubeBase - logoWidth)/2])
      rotate([0, 90, 0])
        A3D();
    }
}

module A3D() {
  linear_extrude(cubeBase + logoOffset) {
    polygon(points=[[0,0],
                    [0.57647 * logoWidth, 0],
                    [0.50588 * logoWidth, 0.17647 * logoWidth],
                    [0.34117 * logoWidth, 0.17647 * logoWidth],
                    [0.49411 * logoWidth, 0.52941 * logoWidth],  // A inner top
                    [0.72941 * logoWidth, 0],
                    [logoWidth, 0],  // bottom right corner
                    [0.49411 * logoWidth, 1.16470 * logoWidth]

    ]);
  }

}