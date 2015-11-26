class Enemy {
  //Global variables
  float x1;
  float y1;
  float s1;
  float orig_s_;
  float r1;
  int shipfill1;
  int shipfill2;
  int shipfill3;

  //Constructor
 Enemy (float x_, float y_, float s_) {
    x1=x_;
    y1=y_;
    s1=s_;
    orig_s_=s_;
    r1=25;
    shipfill1 = 23;
    shipfill2 = 108;
    shipfill3 = 7;

  }

  //Draws things related to ship
  void update() {

    //Ship body
    fill(shipfill1, shipfill2, shipfill3);
    ellipse(x1, y1, r1*2, r1*2);
    
 //Makes the ship move
    
    
    x1=x1+s1;
    
    //put the ship back on screen
    if (x1<-25) {
      x1=1300;
      y1=100;
      return;
    }
   
    //Ship is still on screen
    return;
  }
 //get x
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

 