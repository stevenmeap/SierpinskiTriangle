
public static int angle;
public void setup() {
  size(800, 700, P3D);
  angle = 0;
  noLoop();


  //  coolTriangle(224,580,200);

  // coolTriangle(112,405,200);
}

public void draw() {
  background(233);
  //pyramid(100, 580, -200, 100);
  coolTriangle(100, 580, -500, 1000);
}


public void mousePressed() {
  angle += 100;
}
public void pyramid(int x, int y, int z, int len) {
  pushMatrix();
  //noFill();
  beginShape();
  vertex(x, y, z);
  vertex(x + len, y, z);
  vertex(x + len, y, z + len);
  vertex(x, y, z + len);
  vertex(x + len/2, y - len, z + len/2);

  // vertex(x, y, z);

  endShape(CLOSE);

  popMatrix();
}
public void coolTriangle(int x, int y, int z, int len) {
  if (len <= 20) {
    pushMatrix();
    //noFill();
    pyramid(x,y,z,len);

    popMatrix();

    return;
  } else {
    coolTriangle(x, y, z, len / 2);
    coolTriangle(x + len/2, y, z, len/2);
    coolTriangle(x, y, z + len/2, len/2);
    coolTriangle(x + len/4, y - len /3, z + len/4, len/2);
  }
}
