class Mario{
  
  PImage marioImage;
  PVector marioPosition;
  float marioDirection;
  PVector marioVelocity;
  float marioJumpSpeed;
  float marioWalkSpeed;
  float marioH;
  float marioW;

  float gravity;
  float ground;


  Mario(PImage image, PVector position, float direction, PVector velocity, float jumpSpeed, float walkSpeed, float h, float w){
  
    marioImage = image;
    marioPosition = position;
    marioDirection = direction;
    marioVelocity = velocity;
    marioJumpSpeed = jumpSpeed;
    marioWalkSpeed = walkSpeed;
    marioH = h;
    marioW = w;
  }
  
  void updateMario(){
    
    gravity = 0.3;
    ground = 600;
    
  //only apply gravity if above ground.
  if(marioPosition.y < ground){
    marioVelocity.y += gravity;
  }
  else {
    marioVelocity.y = 0;
  }
  // If on the ground and "jump" keyy is pressed set my upward velocity to the jump speed!\
  if (marioPosition.y >= ground && up != 0){
    marioVelocity.y = -marioJumpSpeed;
  }
  //Walk left and right.
  marioVelocity.x = marioWalkSpeed * (left + right);
  // Check the nextPosition before actually setting the position so we cant move mario if he's colliding.
  PVector nextPosition = new PVector(marioPosition.x, marioPosition.y);
  nextPosition.add(marioVelocity);
  // Check collision with edge of screen and don't move if at the edge
  float offset = 58;
  if(nextPosition.x > offset && nextPosition.x <(2 * width/3 - offset)){
    marioPosition.x = nextPosition.x;
  }
  if (nextPosition.y > offset && nextPosition.y <(height - offset)){
    mario.marioPosition.y = nextPosition.y;
  }
  //pushMatrix();
  //translate(marioPosition.x, marioPosition.y);
  //scale(marioDirection,1);
  
  imageMode(CENTER);
  image(marioImage,marioPosition.x,marioPosition.y);
  
  //popMatrix();
}


}
