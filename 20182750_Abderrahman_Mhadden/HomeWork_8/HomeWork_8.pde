float colorRange;
float xRange;
float yRange;
int blue;
float size;
int colorChanging;
float theta;

void setup(){
  
  fullScreen();
  background(#E89425); 
  
  colorRange = 0;
  xRange = 0.5;
  yRange = 1.5;
  blue = 20;
  size = 25;
  colorChanging = 2;
  theta = 0;
  
}

void draw(){
  
  float x = xRange * cos(theta);
  float y = yRange * sin(theta);
  float noiseValueX = noise(xRange);
  float noiseValueY = noise(xRange);
  float colorNoiseValue = noise(colorRange);
  
  noStroke();
  fill(75,39,blue);
  ellipse(x + width/2, y + height/2, noiseValueX*size, noiseValueY*size);
  
  xRange += 0.75;
  yRange += 0.55;
  colorRange += 5;
  theta += 0.15;
  blue += colorNoiseValue*colorChanging;
}
