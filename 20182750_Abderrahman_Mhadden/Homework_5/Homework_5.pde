Flower myFlower1;
Flower myFlower2;


  int radius1=60; // radius of the flower
  int petalsNumber=7; // number of flower petals
  float flowerX=width;
  float flowerY=height;
  int petalsColor=#FFA000;
  int speedX = 5; // x coordinate of flower movement
  int speedY = 5; // y coordinate of flower movement 


void setup(){
  frameRate(60);
  size (1200,800);
 myFlower1 = new Flower(radius1, petalsNumber, flowerX, flowerY, petalsColor, speedX, speedY);
 myFlower2 = new Flower(radius1 + 20, petalsNumber, flowerX+random(200,500), flowerY+random(200,500), petalsColor, speedX+5, speedY+5); //2nd flower is slightly faster and starts from different position
}

void draw(){
  background(#43AF76);
  myFlower1.drawFlower();
  myFlower1.move();
  myFlower1.bounce();
  
  myFlower2.drawFlower();
  myFlower2.move();
  myFlower2.bounce();
  
  
  
}
