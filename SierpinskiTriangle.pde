

public void setup() {
  size(800, 700, P3D);
  l = 800;

}
public static int l;
public void draw() {
  background(233);
  if(l < 800 && !mousePressed) l+=5;
  if(mousePressed && l > 0) l-=5;
  coolTriangle(100, 580, -500, l);
}


public void mousePressed() {
  l-=5;
}
public void pyramid(int x, int y, int z, int len) {
  translate(x,y,z);
  box(len);
}
public void coolTriangle(int x, int y, int z, int len) {
  if (len <= 20) {
    pushMatrix();
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
