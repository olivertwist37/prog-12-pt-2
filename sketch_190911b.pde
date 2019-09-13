float x,y,d,vx,vy,xa,ya;



void setup(){
  
  size(800,800);
  x=400;
  y=700;
  d=75;
  vx=5;
  vy=5;
  xa=0;
  ya=0;
}

void draw(){
  background (240,240,255);
  noStroke();
  fill(100,255,100);
  ellipse(x,y,d,d);
  
  x=x+vx;
  y=y+vy;
  
  if (x<d/2||x>800-d/2){
   vx=vx*-1; 
    
  }
    
  if (y<d/2||y>800-d/2){
   vy=vy*-1; 
    
  }
 
  face(0,0,250,350);
 face(200,0,250,350);
  face(-200,0,500,500);
}

void face(int xb,int yb, int l,int pos){
  pushMatrix();
  translate(xb,yb);
  
  fill(100,0,100);
  ellipse(400,pos,200,l);
  fill(100,255,100);
  ellipse(400,400,200,250);
  fill(0);
  ellipse(370,380,50,20);
  ellipse(430,380,50,20);
  
  ellipse(415,450,50,10);
  ellipse(385,450,50,10);
  
  
  popMatrix();
  
}
