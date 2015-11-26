class Enemiey {
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
 Enemiey (float x_, float y_, float s_) {
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
    ellipse(x1, y1, r1*2, r1/4);
    if (orig_s_<0) {
      rect(x1+6,y1+3,6,6);
      ellipse(x1+16,y1+8,r1*1.5,r1/6);
    }
    else {
      rect(x1-12,y1+3,6,6);
      ellipse(x1-14,y1+8,r1*1.5,r1/6);
    }

 //Makes the ship move
    
    
    x1=x1+s1;
    
    //put the ship back on screen
    if ((x1<-25) & (orig_s_<0)) {
      x1=1300;
      y1=int(random(100,500));
      s1=orig_s_;
      shipfill1 = 23;
      shipfill2 = 108;
      shipfill3 = 7;
      return;
    }
    
    //put the ship back on screen
    if ((x1>1100) & (orig_s_>0)) {
      x1=-50;
      s1=orig_s_;
      y1=int(random(100,500));
      shipfill1 = 23;
      shipfill2 = 108;
      shipfill3 = 7;
      return;
    }
    //Ship is still on screen
    return;
  }

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