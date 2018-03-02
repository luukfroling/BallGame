enemy[] e = new enemy[5];
player p;
float mp;
boolean tapped;
float l;
int score;
boolean gameOver;
PrintWriter output;

void setup(){
  
  gameOver = false;
  tapped = false;
  p = new player();
  for(int i = 0; i < 5; i++){
    e[i] = new enemy();
  }
  score = 0;
  textAlign(CENTER);
  textSize(40);
  text("tap to start",displayWidth/2,displayHeight/2);
  textSize(50);
  mouseX = displayWidth/2;
  mouseY = displayHeight;
  l = 1; 
}

void draw(){
  if(tapped){
  background(100);
  text(str(score), displayWidth/2, 50);
  fill(255);
  mp = map(mouseX,0,displayWidth,0.01,l);
  for(int i = 0; i < 5; i++){
  e[i].update(mp);
  e[i].show();
  }
  for(int i = 0; i < 5; i++){
  p.measure(e[i]);
  }
  p.update();
  p.show();
  } 
  if(gameOver){
    tapped = false;
    p = new player();
    for(int i = 0; i < 5; i++){
    e[i] = new enemy();
    }
    background(0);
    fill(255);
    text("GAME OVER",displayWidth/2,displayHeight/2);
    text("score is: " + score,displayWidth/2,(displayHeight/2)+60);
    gameOver = false;
    score = 0;
    l = 1;
  }
  
}

void mousePressed(){
  tapped = true;
}