PImage i;
String gameState;
PFont font;
import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup() {
      size(800,600);
      gameState = "START";
      i = loadImage("oveia.png");     
      minim = new Minim(this);
      song = minim.loadFile("n.mp3");

}


  

void draw() {
 song.play(); 
 if (gameState == "START"){
    startGame();}
    else if (gameState == "START2") {
    startGame2();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "WIN") {
    winGame();
  } else if (gameState == "LOSE") {
    loseGame();
  };
}


void startGame() {

  image(i,random(0,512), random(0,300));
  background(#080707);
 
 font = loadFont("BlackadderITC-Regular-70.vlw");  
 textFont(font);
  textSize(40);
  fill(#FFFCFC);
  text("Click Anywhere to Play",235, 500);
    textSize(70);
  fill(#FFFCFC);
  text("Ovelha Ânonima",235, 200);  textSize(30);
  fill(#FFFCFC);
  text("O JOGO",350, 300);
 if (mouseY < height/2) 
    gameState = "START2";
  
  if (mousePressed==true)
   gameState = "PLAY";
}

void startGame2() {
  
 
  background(#FFFCFC );

   image(i,random(0,400), random(0,300));
   delay(100) ;
  textSize(30);
  fill(#080707);
  text("Click Anywhere to Play",235, 500);
    textSize(70);
  fill(#080707);
  text("Ovelha Ânonima",235, 200);  textSize(30);
  fill(#080707);
  text("O JOGO",350, 300);
  if (mouseY > height/2)
   gameState = "START";
  
  if (mousePressed==true)
   gameState = "PLAY";
}
void playGame() { 
  fill(#FFFCFC);
  rect(0,0,width,height);
}
void winGame() { 
}
void loseGame() { }
