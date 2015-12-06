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
   rect(x1+5, y1-15,r1,r1*2);
   fill(255,125,255);
   rect(x1-5,y1,r1*3,r1*3);
 }
}