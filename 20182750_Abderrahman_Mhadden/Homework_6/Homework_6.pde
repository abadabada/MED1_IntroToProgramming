import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer marioSong;

Mario mario;
Coin c;

Coin[] coins;
//ArrayList<Coin> coins = new ArrayList<>();
float left;
float right;
float up;
float down;

int score = 0;

int coinsDisplayed = 4;

float gravity = 0.3;

float ground = 600;

PImage groundImg;

PFont font;

float _coinH = 20;
float _coinW = 10;
PVector _coinPosition = new PVector(width/3, ground - 150);
PImage _coinImage;
int _distance = 100;
float _coinSurfaceArea;
int _coinsDisplayed = 4;
float _originalCoinPosition = width/3;

float _marioH = 165;
float _marioW = 116;
float _jumpSpeed = 10;
float _walkSpeed = 5;
PVector _velocity = new PVector(0,0);
PVector _marioPosition = new PVector(2 * width/3, ground);
PImage _marioImage;
float _direction = 1;

void setup(){
  size(1200,800);
  
  
  _marioImage = loadImage("Mario_Standing_Left_Side.png");
  _coinImage = loadImage("mario_coin.png");
  font = loadFont("SuperPlumberBrothers-48.vlw");
  
  textFont(font); 
  
  
  c = new Coin();
  coins = new Coin[4]; 
  for(int i = 0; i < _coinsDisplayed; i++){
    _coinPosition.x = _originalCoinPosition + i * _distance;
    //println(_coinPosition.x);
    coins[i] = new Coin(_coinImage, _coinPosition, _coinH, _coinW);
    print(coins[i].coinPosition.x);
  }
  
  
  _marioPosition.x = width/8;
  mario = new Mario(_marioImage, _marioPosition, _direction, _velocity, _jumpSpeed, _walkSpeed, _marioW, _marioH);
  
  //PlayMusic();
}

void draw(){
  
  ground();
  c.updateCoin();
  mario.updateMario();
  //collision();
  //ScoreCoins();
}



void keyPressed()
{
  if (key == 'd')
  {
    right = 1;
    mario.marioDirection = -1;
  }
  if (key == 'a')
  {
    left = -1;
    mario.marioDirection = 1;
  }
  if (key == ' ')
  {
    up = -1;
  }
  if (key == 's')
  {
    down = 1;
  }
}

void keyReleased()
{
  if (key == 'd')
  {
    right = 0;
  }
  if (key == 'a')
  {
    left = 0;
  }
  if (key == ' ')
  {
    up = 0;
  }
  if (key == 's')
  {
    down = 0;
  }
}

void ground(){
  
  background(#A8B4F5);
  fill(#A7782A);
  stroke(#939393);
  rect(0,652,width,200);
}

void PlayMusic(){
  minim = new Minim(this);
  marioSong = minim.loadFile("Mario_Theme_Song.mp3");
  marioSong.play();
}




//void ScoreCoins(){
  
//  String result = "COINS: ";
//  float marioX = mario.marioPosition.x + 165;
//  float marioY = mario.marioPosition.y + 116;
  
//  float coin1X = coins[0].coinPosition.x + 10;
//  float coin2X = coins[1].coinPosition.x + 10;
//  float coin3X = coins[2].coinPosition.x + 10;
//  float coin4X = coins[3].coinPosition.x + 10;
  
//  float coin1Y = coins[0].coinPosition.y + 20;
//  float coin2Y = coins[1].coinPosition.y + 20;
//  float coin3Y = coins[2].coinPosition.y + 20;
//  float coin4Y = coins[3].coinPosition.y + 20;
  
  
//  for(int i = 0; i < 4; i++){
    
//  if (marioX == (coins[i].coinPosition.x + _coinW) && marioY == (coins[i].coinPosition.y + _coinH)){ 
//      score ++;
//      print(result + score);
//    } else if (marioX == (coins[i].coinPosition.x + _coinW) + 100 && marioY == (coins[i].coinPosition.y + _coinH)){
//      score ++;
//      print(result + score);
//    } else if( marioX == (coins[i].coinPosition.x + _coinW) + 200 && marioY == (coins[i].coinPosition.y + _coinH)){
//      score ++;
//      print(result + score);
//    } else if (marioX == (coins[i].coinPosition.x + _coinW) + 300 && marioY == (coins[i].coinPosition.y + _coinH)){
//      score ++;
//      print(result + score);
//    }
//    textSize(32);
//    stroke(#000000);
//    fill(#000000);
//    text(result + score,20,35);
//  }
//}

//void collision(){
   
//  for(int i = 0; i < _coinsDisplayed; i++){
    
//    String result = "COINS: ";   
//    println((mario.marioPosition.x + mario.marioW/2) + " " + (coins[i].coinPosition.x) + " " + (coins[i].coinPosition.x + _coinW));
//    if (mario.marioPosition.x + mario.marioW/2 > coins[i].coinPosition.x && mario.marioPosition.x + mario.marioW/2 < coins[i].coinPosition.x + _coinW){
//      score++;
//      _coinsDisplayed--;
//      println("blaaa");
//    }
//    textSize(32);
//    stroke(#000000);
//    fill(#000000);
//    text(result + score,20,35);
//  }
//}
