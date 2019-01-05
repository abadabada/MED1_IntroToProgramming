class Circle {

  float radius; // radius of the flower
  PVector flowerPosition;


  Circle(float r,  PVector position) { //placeholders

    radius=r;
    flowerPosition = position;
  }

  void display() {

    fill(100, 0, 0);
    ellipse(flowerPosition.x,flowerPosition.y, radius*1.2, radius*1.2);
    
  }
}
