int ilosc=50;

particle[] particles = new particle[ilosc];

void setup(){
 background(255);
 size(1280,720); 
 
 for (int i = 0; i < ilosc; i++)
   {
     particles[i] = new particle();
   }
}


void draw(){
  
  for ( int i = 0 ; i < ilosc; i++){
     particles[i].display();
     particles[i].stay();
     println(frameRate);
   }
  
}