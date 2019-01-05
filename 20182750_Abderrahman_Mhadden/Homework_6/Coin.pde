class Coin{
  
  PImage coinImage;
  PVector coinPosition;
  float coinDirection;
  float coinH;
  float coinW;
  int coinDistance;
  float coinsDisplayed = 4;
  int score = 0;
  float originalCoinPosition = width/3;
  
  Coin(PImage image, PVector position, float h, float w){
    
    coinImage = image;
    coinPosition = position;
    coinH = h;
    coinW = w;
    
  }
  Coin(){}
  
  void updateCoin(){
  
  
  String result = "COINS: "; 
  coinDistance = 100;
  float d;
  
  for(int i = 0 ; i < coinsDisplayed ; i++){
    
    d = originalCoinPosition + i * coinDistance;
    
 //  for(int j = 0; j < coinsDisplayed; j++){
      
    //pushMatrix();
    //translate(coins[i].coinPosition.x, coins[i].coinPosition.y); 
    //imageMode(CENTER);
    image(coins[i].coinImage,d,_coinPosition.y);
    //popMatrix();  
      if (mario.marioPosition.x + mario.marioW/2 > coins[i].coinPosition.x && mario.marioPosition.x + mario.marioW/2 < coins[i].coinPosition.x + _coinW){
        println(coins[i].coinPosition.x);
        score++;
        coinsDisplayed--;
    }
      
    //  }
      
  }
  textSize(32);
  stroke(#000000);
  fill(#000000);
  text(result + score,20,35);
   
}
    
}
