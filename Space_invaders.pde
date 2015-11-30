//Space ships

//variables
Enemy e1;
Enemy e2;
Enemy e3;
Enemy e4;
Turret t;
Bullet b1;
boolean bulletfired;
float distance;
float shooterX;
float shooterY;


//things that run once
void setup() {

  frameRate(60);
  size(850, 755);
  background(0);
  
  shooterX = 425;
  shooterY = 730;
  
  e1=new Enemy(900, random(100,500), -3);
  e2=new Enemy(-300, random(100,500),4);
  e3=new Enemy(-50, random(100,500),2);
  e4=new Enemy(1000, random(100,500),-1);
  
  t=new Turret(425,730);
  
  b1 = new Bullet(shooterX+10,shooterY,-10);
  bulletfired = false;
}

//things that run multiple times
void draw() {
 noStroke();
 
  background(0);
  e1.update();
  e2.update();
  e3.update();
  e4.update();
  t.update();
 
 
 if(bulletfired){
   bulletfired=b1.update();
 }
 
 if (keyPressed){
   if(key == 'b'){
     if(!bulletfired){
       bulletfired = true;
     }
   }
 }
}