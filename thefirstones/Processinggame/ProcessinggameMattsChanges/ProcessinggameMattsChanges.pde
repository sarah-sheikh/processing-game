
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
if (mousePressed) {
   // as long as the square is below the top keep moving up
   if(y >= 0) { 
      y = y - 4; 
   }
   
   // if the square is at the top and I'm holding the mouse stay there.
   // if I let go of the mouse then I jump down to this line ***
   else {}
   }
   
   // ***
   // make the sqaure fall
else if(y != height) {
  y = y + 4; 
  }

// make the square stay at the top


}





