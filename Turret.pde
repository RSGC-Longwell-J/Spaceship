class Turret {
  
 int y1;
 int x1;
 int r1;
 Turret(int x_, int y_) {
 
 y1=y_;
 x1=x_;
 r1=10;
 
 }
 
 void update(){
   
   fill(255,255,255);
   rect(x1+5, y1-5,r1,r1);
   fill(255,125,255);
   rect(x1,y1,r1*2,r1*2);
 }


float getY(){
  
  return y1;
}


}