class Monk{
  float x,y,r;
  float vx = 10, vy = 10;
  Monk(){
    x = random(0,width);
    y = random(0,height);
    r = 400;
  }
  Monk(float a, float b){
    x=a;
    y=b;
    r=400;
  }
  Monk(float a, float b,int c){
    x=a;
    y=b;
    r=c;
  }
  void display(){
    fill(102,51,0);
    circle(x, y, r);
    fill(225,205,125);
    circle(x, y, r*0.9);
    fill(0,0,0);
    ellipse(x,y+0.15*r/4, r/4*0.50, r*0.10);
    fill(255,255,255);
    circle(x+r/4*0.80,y-r/4*0.30,r*0.10);
    circle(x-r/4*0.80,y-r/4*0.30,r*0.10);
    fill(0,0,0);
    circle(x+0.8*r/4,y-0.3*r/4,r*0.074);
    circle(x-0.8*r/4,y-0.3*r/4,r*0.074);
    arc(x+0.8*r/4,y-0.7*r/4, 50,10, PI, 2*PI);
    arc(x-0.8*r/4,y-0.7*r/4, 50,10, PI, 2*PI);
    fill(255,0,0);
    arc(x, y+r/4*0.70, r/4,r/4*0.6, 0, PI);
    fill(255,255,255);
    quad(x,y+0.7*r/4, x,y+0.9*r/4, x+0.2*r/4,y+0.9*r/4, x+0.2*r/4, y+0.7*r/4);
    quad(x,y+0.7*r/4, x,y+0.9*r/4, x-0.2*r/4,y+0.9*r/4, x-0.2*r/4, y+0.7*r/4);
    fill(0,0,0);
    line(x+r/4*0.50, y+r/4*0.70, x-r/4*0.50, y+r/4*0.70);
  
  }
  void act() { 
    x += vx; y += vy;
    if(x<0) vx = random(10,20);
    if(x>width) vx = random(-20,-10);
    if(y<0) vy = random(10,20);
    if(y>height) vy = random(-20,-10);
  }
}
