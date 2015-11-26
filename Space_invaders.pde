//Space ships

//variables
Enemy e1;
Enemy e2;
Enemy e3;
Enemy e4;
PImage space;


//things that run once
void setup() {

  frameRate(60);
  size(850, 1025);
  space=loadImage("space-2.jpg");
  background(0);
  
  e1=new Enemy(1100, random(100,500), -3);
  e2=new Enemy(-300, random(100,500),4);
  e3=new Enemy(-50, random(100,500),2);
  e4=new Enemy(1200, random(100,500),-1);
}

//things that run multiple times
void draw() {

  background(0);
  e1.update();
  e2.update();
  e3.update();
  e4.update();
  noStroke();
 
  

  



 
}