class player{
  float x, y;
  float r = 80;
  void update(){
    x = mouseX;
    y = mouseY;
  }
  
  void show(){
    ellipse(x , y , r , r);
  }
  
  void measure(enemy e){
    if( dist(e.x,e.y,x,y) < (e.r + r)/2){
        background(255,0,0);
        gameOver = true;
    }
  }
}