//Space ships

//variables
Enemiey e1;

PImage space;


//things that run once
void setup() {

  frameRate(60);
  size(850, 525);
  space=loadImage("space-2.jpg");
  image(space, 0, 0);
  
  e1=new Enemiey(1100, 100, -1);
}

//things that run multiple times
void draw() {

  e1.update();
  
  noStroke();
  
  background(255);
  e1.update();
  
  image(space, 0, 0);
  



 
}