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
    shipfill1 = 142;
    shipfill2 = 136;
    shipfill3 = 136;
  }

  //Draws things related to ship
  void update() {

    //Ship body
    fill(shipfill1, shipfill2, shipfill3);
    ellipse(x1-20,y1,20,40);
    ellipse(x1+20,y1,20,40);
    ellipse(x1,y1,20,20);

    //Makes the ship move
    x1=x1+s1;

    //put the ship back on screen
    if ((x1<-25) &(orig_s_<0)) {
      x1=1000;
      y1=random(100, 500);
      return;
    }

    if((x1>900) & (orig_s_>0)){
      x1=-75;
      y1=random(100,500);
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