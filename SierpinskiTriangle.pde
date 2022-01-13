public void setup(){
  size(600,600);
  
  coolTriangle(50,580,500);
//  coolTriangle(224,580,200);
  
 // coolTriangle(112,405,200);
}

public void draw(){
  
}


public void mousePressed(){
}

public void coolTriangle(int x, int y, int len){
  if(len <= 20){
    circle(x, y, len/2);
    System.out.println(x);
    return;
  }else{
    coolTriangle(x, y, len / 2);
    coolTriangle(x + len/2, y, len / 2);
    coolTriangle(x + len/4, y - len/2, len / 2);
  }
  
}
