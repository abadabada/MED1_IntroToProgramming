class Flower {

  float radius; // radius of the flower
  int nunmberOfPetals;
  float x; 
  float y;
  int petalColor; 
  int xspeed; // x coordinate of flower movement
  int yspeed;// y coordinate of flower movement


  Flower(float r, int nop, float x1, float y1, int pc, int xs, int ys) { //placeholders

    radius=r;
    nunmberOfPetals = nop;
    x=x1;
    y=y1;
    petalColor=pc;
    xspeed=xs;
    yspeed=ys;
  }


  void drawFlower() {
    float flowerX;
    float flowerY;
    fill(#4837AA);
    for (float i=0; i<PI*2; i+=2*PI/nunmberOfPetals) {
      flowerX=x + radius*cos(i);
      flowerY=y + radius*sin(i);
      ellipse(flowerX, flowerY,radius, radius);
    }

    fill(200, 200, 0);
    ellipse(x, y, radius*1.2, radius*1.2);
  }


  void move() {
    x += xspeed; //the movement of flower on X coordinate increases according to the xspeed
    y += yspeed; //the movement of flower on X coordinate increases according to the yspeed
  }

  void bounce() {
    float distance = dist(myFlower1.x, myFlower1.y, myFlower2.x, myFlower2.y); //distance between both radius of the flowers. 

    if (x > width - radius || x<radius || distance < myFlower1.radius + myFlower2.radius) { //changes X direction if: the flower reaches border, x=0 , touches another flower (distance between both radius is negative). Minus the radius of the flower so it stays in frame.
      xspeed = xspeed * -1;  
    }

    if (y > height - radius|| y<radius || distance < myFlower1.radius + myFlower2.radius) { //changes Y direction if: the flower reaches border, y=0, touches another flower (distance between both radius is negative). Minus the radius of the flower so it stays in frame.
      yspeed = yspeed * -1;
    }
  }
}
