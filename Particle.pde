float range= 1;

class particle{
  float x =     random(0,0);//width/2;
  float y =    random(0,0);//height/2; 
  float xold=x;
  float yold=y;
  float directionX;
  float directionY;
  float draw;

void display(){
  color(42,42,42,255);
  strokeWeight(0.010);
  stroke(0.05);
  alpha(0);
  range = random(5,10);
  
  if(draw==2){
    line(xold, yold, x, y);
  }
  
  draw=ceil(random(0,2));
  directionX=ceil(random(0,3));
  directionY=ceil(random(0,3));
  
  xold=x;
  yold=y;

    if (directionX==1){
      x+=random(-range,range);
    }
    
    if (directionX==2){
      x+=random(-range,range);
    }
    
     if (directionY==1){
      y+=random(-range,range);
    }
    
     if (directionY==2){
      y+=random(-range,range);
    }
}
void stay(){
  if(x>width){
   x=width/2;
   draw=0;
 }
  
  if(x<0){
   x=width/2; 
   draw=0;
 }
  
  if(y>height){
   y=height/2;
   draw=0;
 }
  if(y<0){
   y=height/2;
   draw=0;
 } 
}




}

/*
void Image(){
 String message = "Maxwell"; 
 message
}
*/