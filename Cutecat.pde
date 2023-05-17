class Cutecat{
  //constructor
  Cutecat(){
  x = width/2 ; y = height/2; s = 200;
  }
  Cutecat(float p, float q){
    x = p; y = q; s = 200;
  }
  Cutecat(float p, float q, float r){
    x = p; y = q; s = r;
  }
  //member data
  float x,y,s;
  float vx = 10, vy = 10;
  
  //member function
  void display(){
  fill(194,197,204,180);
  ellipse(x,y,s,s);
  fill(255,255,255);
  ellipse(x+s*0.25,y - s*0.15,0.2*s,0.2*s);
  fill(255,255,255);
  ellipse(x-s*0.25,y - s*0.15,0.2*s,0.2*s);
  arc(x,y+s*0.15,0.375*s,0.375*s,0,PI,PIE);
  strokeWeight(3);
  line(x - s*0.4, y - s*0.05, x - s*0.55, y - s*0.2);
  strokeWeight(3);
  line(x - s*0.5, y + s*0.05, x-s*0.65, y + s*0.05);
  strokeWeight(3);
  line(x - s*0.4, y + s*0.15, x-s*0.55, y+s*0.3);
  strokeWeight(3);
  line(x + s*0.4, y - s*0.1, x+s*0.55, y-s*0.25);
  strokeWeight(3);
  line(x + s*0.4, y + s*0.05, x+s*0.65, y + s*0.05);
  strokeWeight(3);
  line(x + s*0.4, y + s*0.15, x + s*0.55, y+s*0.3);
  fill(0,0,0);
  arc(x - s * 0.275, y - s * 0.35, 0.175*s, 0.175*s, PI-QUARTER_PI, TWO_PI-QUARTER_PI, PIE);
  fill(0,0,0);
  ellipse(x - s * 0.25, y - s * 0.15, 0.05*s, 0.05*s);
  fill(0,0,0);
  ellipse(x + s * 0.25, y - s * 0.15, 0.05*s, 0.05*s);
  }
  void act() { 
    x += vx; y += vy;
    if(x<0) vx = random(10,20);
    if(x>width) vx = random(-20,-10);
    if(y<0) vy = random(10,20);
    if(y>height) vy = random(-20,-10);
  }
}
