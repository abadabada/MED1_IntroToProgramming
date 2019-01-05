Circle circle;

int num = 50;
float[] x = new float[num];
float[] y = new float[num];
int i = 0;

int _radius=60; // radius of the flower
PVector _position = new PVector(height,width);



void setup() { 
  size(1000, 800);
  circle = new Circle(_radius, _position);
}

void draw() {
  background(0);
  _position.x = x[i] = mouseX;
  _position.y = y[i] = mouseY;

  i++;

  if (i % num == 0) {
    i = 0;
  }
  for (int j = 0; j < num; j++) {
    circle.display();
    _position.x = x[(i+j)%num];
    _position.y = y[(i+j)%num];
    circle = new Circle(j, _position);
  }
}
