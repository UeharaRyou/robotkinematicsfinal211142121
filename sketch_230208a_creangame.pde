float base1X = 0;
float base1Y = 0;

float base2Z = 0;

float angle1 = 0;

float dif = 0.5;

float sphereX = random(100) -50;
float sphereY = random(100) -50;


void setup(){
  size(1200, 800, P3D);
  
  camera(120, 280, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255); 
  
  
  if(keyPressed){
    if(key == 'd'){
      base1X = base1X + dif;
    }
    if(key == 'a'){
      base1X = base1X - dif;
    }
    if(key == 'z'){
      base1Y = base1Y + dif;
    }
    if(key == 'c'){
      base1Y = base1Y - dif;
    }
    if(key == 'x'){
      base2Z = base2Z - dif;
    }
    if(key == 's'){
      base2Z = base2Z + dif;
    }
    if(key == 'v'){
      angle1 = angle1 + dif;
    }
    if(key == 'R'){
      base1X = 0;
      base1Y = 0;
      base2Z = 0;
      angle1 = 0;
    }
  }
 
//枠組み
  pushMatrix();
  translate(50,50,120);
  fill(200);
  box(112,112,20);
 
  
//base1
  
  translate(base1X,base1Y,-20);
  fill(150);
  box(15,15,20);
 
//base2
  
  translate(0,0,base2Z);
  fill(150);
  box(10,10,60);
  
//arm1
  rotateY(radians(angle1));
  translate(15,0,0);
  fill(100);
  translate(0,0,-30);
  box(30,10,10);
  
//daruma
  
  popMatrix();
  translate(sphereX,sphereY,5);
  fill(255,0,0);
  sphere(10);
  translate(0,0,10);
  sphere(8);

}
