

public void setup() {
  size(800, 700, P3D);
  l = 800;

}
public static int l;
public void draw() {
  background(233);
  if(l < 800 && !mousePressed) l++;
  if(mousePressed && l > 0) l--;
  coolTriangle(100, 580, -500, l);
}


public void mousePressed() {
  l--;
}
public void pyramid(int x, int y, int z, int len) {
  /*
  pushMatrix();
  //noFill();
 // rotateZ(4);
  beginShape();
  vertex(x, y, z);
  vertex(x + len, y, z);
  vertex(x + len, y, z + len);
  vertex(x, y, z + len);
  vertex(x + len/2, y - len, z + len/2);

  // vertex(x, y, z);

  endShape(CLOSE);

  popMatrix();
  */
  translate(x,y,z);
  box(len);
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
