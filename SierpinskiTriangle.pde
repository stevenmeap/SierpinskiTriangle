

public void setup(){
  size(700,700);

  noLoop();
  
  
//  coolTriangle(224,580,200);
  
 // coolTriangle(112,405,200);
}

public void draw(){
  coolTriangle(10,680,600);
}


public void mousePressed(){
  redraw();
}

public void coolTriangle(int x, int y, int len){
  if(len <= 20){
    
    ellipse(x, y, len, len);
  
    return;
  }else{
    coolTriangle(x, y, len/2);
    coolTriangle(x, y - len/3, len/3);
    coolTriangle(x + len/3, y, len / 3);
    coolTriangle(x + len/2, y - len/2, len/2);
  }
  
}
