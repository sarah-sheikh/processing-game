
float x = 300;   // x location of square
float y = 360;     // y location of square

// The statements in the setup() function 
// execute once when the program begins
void setup() {
  size(640, 360);  // Size must be the first statement
  stroke(255);     // Set line drawing color to white
 
}
// The statements in draw() are executed until the 
// program is stopped. Each statement is executed in 
// sequence and after the last line is read, the first 
// line is executed again.
void draw() { 
  background(0);   // Clear the screen with a black background
  rectMode(CENTER);
  rect(x,y,10,10);

// move the square up if i'm pressing the mouse
//stop going up if square reaches the top
if (mousePressed) {
  if(y > 0) {  
    y = y - 4; 
   }
}  

  else if(y != height){
   // go back down when i let go of the mouse 
   
   for (int i = 0; i < 360; i++) {
     y = y + 1;
  }
 }
}
