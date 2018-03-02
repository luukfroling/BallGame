class enemy{
  enemy(){
    x = random(width);
    y = 0;
    f1 = random(1,25);
    f2 = random(-1,1);
  }
  float x,y;
  float f1, f2;
  float r = 25;
  
  void update(float mp){
    y = y + f1 * mp;
    x += f2;
    if((x > width) ||(x<0) || (y > height)){
      if(y > height){
      score++;
      }
      y = 0;
      x = random(width);
      f2 = random(-1,1);
      f1 = random(15,25);
      l += 0.01;
    }
  }
  
  void show(){
    ellipse(x , y , r, r);
  }
}