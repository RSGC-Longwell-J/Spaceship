class Bullet{
  //variables
  
  float x1;
  float y1;
  float s1;
  float r1;
  float origy;
  
  //Constructor
  Bullet(float x_, float y_,float s_){
  
  // variable values
  x1=x_;
  y1=y_;
  s1=s_;
  r1=5;
  origy=y1;
}

//True/False update
boolean update(){
  
  //Draws the bullet
  fill(183,9,9);
  ellipse(x1, y1,r1*2,r1*2);
  
  //makes the bullet move
  y1=y1+s1;
  
  //returns the bullet to it's turret
  if(y1<25){
    y1=origy;
    return false;
  }
  
  return true;
  
}
//creats a method to reset the starting Y position of the bullet 
void bulletresetY(){
  y1=origy;
}

//How the porgram knows if the bullet is touching any of the enemies
boolean isTouching (Enemy TF){
  
  float a=y1-TF.getY();
  float b=x1-TF.getX();
  distance=sqrt(a*a+b*b);
  
  if(distance<(r1+TF.getR())){
    return true;
  }
  
  return false;
}
//how the program know if the bullets hits and ally
boolean isTouching (Ally AL){
  float a=y1-AL.getY();
  float b=x1-AL.getX();
  distance=sqrt(a*a+b*b);
  
  if(distance<(r1+AL.getR()*1)){
    return true;
  }
  return false;
}

}

  
  
  
  