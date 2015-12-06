class Ally {
  
  //Global variables
  float x1;
  float y1;
  float s1;
  float y2;
  float orig_s_;
  float r1;
  int shipfill1;
  int shipfill2;
  int shipfill3;

  //Constructor
  Ally (float x_, float y_,float s_) {
    x1=x_;
    y1=y_;
    y2=y1;
    s1=s_;
    orig_s_=s_;
    r1=25;
    shipfill1 = 100;
    shipfill2 = 100;
    shipfill3 = 100;
  }

  //Draws things related to ship
  void update() {

    //Ship body
    fill(shipfill1, shipfill2, shipfill3);
   ellipse(x1,y1,r1*2,r1*2);
    

    //Makes the ship move
    x1=x1+s1;

    //put the ship back on screen
    if ((x1<-25) &(orig_s_<0)) {
      x1=1000;
      y1=random(100, 500);
      return;
    }
    
    
 //put the ship back on screen
    if((x1>900) & (orig_s_>0)){
      x1=-75;
      y1=random(100,500);
    }
    
    //Ship is still on screen
    return;
  }
   //what happends when the bullet hits that ship
  void shipdies(){
 y1=1000;
 
  }
  
  //Purpose: to return the cordinates of the ship
  float getX() {
    return x1;
  }

  float getY() {
    return y1;
  }

  float getR() {
    return r1;
  }
}