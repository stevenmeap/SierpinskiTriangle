public boolean vertical;

public void setup() {
  vertical = true;
  size(800, 700, P3D);

  noLoop();
  fractalfractal(400, 0, -2000, 3600);
  //inverseFractal(401, 100, -2000, 1000);
}
public void draw() {
  background(200);
  fractalfractal(400, 0, -2000, 3600);
}
public void mousePressed() {
  vertical = !vertical;
  redraw();
}

public void fractalfractal(int x, int y, int z, int len) {
  if (len <= 800) {
    fractal(x, y, z, len);
  } else {
    // 
    if (vertical) {
      fractalfractal(x, y, z, len/2);
      fractalfractal(x + len/2, y, z + len/2, len/2);
      fractalfractal(x - len/2, y, z - len/2, len/2);
    } else {
      fractalfractal(x, y + len/2, z, len/2);
      fractalfractal(x, y - len/2, z, len/2);
    }
  }
}




public void fractal(int x, int y, int z, int len) {
  if (len <= 20) {
    pushMatrix();
    translate(x, y, z);
    box(len);
    popMatrix();
  } else {
    fractal(x, y, z, len / 2);
    fractal(x + len / 2, y + len/2, z, len/2);
    fractal(x - len / 2, y + len/2, z, len/2);
    fractal(x, y + len/2, z + len/2, len/2);
    fractal(x, y + len/2, z - len/2, len/2);


    inverseFractal(x, y+ len*2, z, len);
  }
}

public void inverseFractal(int x, int y, int z, int len) {
  if (len <= 20) {
    pushMatrix();
    translate(x, y, z);
    box(len);
    popMatrix();
  } else {
    inverseFractal(x, y, z, len / 2);
    inverseFractal(x + len / 2, y - len/2, z, len/2);
    inverseFractal(x - len / 2, y - len/2, z, len/2);
    inverseFractal(x, y - len/2, z + len/2, len/2);
    inverseFractal(x, y - len/2, z - len/2, len/2);
  }
}
