class Turret {
  //Variables
 int y1;
 int x1;
 int r1;
 //constructor
 Turret(int x_, int y_) {
 //variable values
 y1=y_;
 x1=x_;
 r1=10;
 
 }
 
 void update(){
   //draws the turret
   fill(255,255,255);
   rect(x1+5, y1-15,r1,r1*2);
   fill(255,125,255);
   rect(x1-5,y1,r1*3,r1*3);
 }
}