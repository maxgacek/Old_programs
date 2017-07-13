void setup(){
   background(55);
  size(1280,720); 
 }

//position 
float x = 640;
float y = 360;
float go = 0;

//properties
int size = 1;
int speed = 1;
int move_speed = 5;
//3 i 5 
//color
float r = 0;
float g = 0;
float b = 0;
float fill = 0;

void draw(){
   //control
  
    if (mousePressed && (mouseButton == LEFT)) {
     x = mouseX;
     y = mouseY;
    }
  
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      y = y-move_speed;
    }
  }
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      y = y+move_speed;
    }
  }
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      x = x-move_speed;
    }
  }
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      x = x+move_speed;
    }
  }
  
  
  //reset button
  
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(0);
    }
  }
 
  //spawn drawer
  rect(x,y,size,size);
  
  println("Go: " + go);
  
  fill(fill);
  stroke(r,g,b);
  go = floor(random(5));
  r = floor(random(0,255));
  g = floor(random(0,255));
  b = floor(random(0,255));
  fill = floor(random(0,255));
  if (go == 1){
   x=x+speed;
  }
  
  if (go == 2){
   x=x-speed;
  }
  
  if (go == 3){
   y=y+speed;
  }
  
  if (go == 4){
   y=y-speed; 
  }
  
  
//border

	if (x<0){
   		x = 0; 
   	}
  
  if (x>width){
  	x = 640; 
  }
  
  if (y>height){
   y = 320; 
  }
  
  if (y<0){
   y = 0; 
  }
}
