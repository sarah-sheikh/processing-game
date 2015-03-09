 
int a = 0;      // Create a variable "a" of the datatype "int"
float b = 50;  // Create a variable "b" of the datatype "float"
 float c = 100; // create another variable "c" of the datatype "float"

void setup() {
  size(640, 360);
  stroke(255);
  frameRate(10);
}

void draw() {
  background(0);
  
  a = a + 5;
  b = b + 5; 
  c = c + 5;
  line(a, 0, a, height/2);
  line(b, height/2, b, height);
  line(c, 0, c, height/2);
  
  if(a > width) {
    a = 0;
  }
  if(b > width) {
    b = 0;
  }
  if(c > width) {
    c = 0;
  }
//create different lenght of lines each time
randomSeed(0);
for (int i=0; i < 100; i++) {
  float r = random(0, 255);
  stroke(225);
  line(a, 0, a, 100);
}
  randomSeed (0) ;            
for (int i=0; i < 100; i++) { 
  float r = random(0, 255) ;
  line(b, 0, b, 100);
  stroke(225);
  line(b,0,b,100);
 }
}

