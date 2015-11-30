class Bullet{
  //variables
  
  float x1;
  float y1;
  float s1;
  float r1;
  float origy;
  Bullet(float x_, float y_,float s_){
  
  x1=x_;
  y1=y_;
  s1=s_;
  r1=5;
  origy=y1;
}

boolean update(){
  
  fill(183,9,9);
  ellipse(x1, y1,r1*2,r1*2);
  
  
  y1=y1+s1;
  
  if(y1<25){
    y1=origy;
    return false;
  }
  
  return true;
  
}
}
  
  
  
  