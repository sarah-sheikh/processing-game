
float x = 300;   // x location of square
float y = 150;     // y location of square

// The statements in the setup() function 
// execute once when the program begins
void setup() {
  size(640, 360);  // Declares the size of the board
  stroke(255);     // Set line drawing color to white
 
}
// The statements in draw() are executed until the 
// program is stopped. Each statement is executed in 
// sequence and after the last line is read, the first 
// line is executed again.
void draw() { 
  background(0);   // Clear the screen with a black background
  rectMode(CENTER); // square is in the center of the x axis
  rect(x,y,10,10);  // draws the square at the x,y cordinants declared
                    // at the top and its size is 10x10

//move the square down until the bottom unless mouse is clicked
if (y <= 360) {        //if the y value is 360, lower on the screen, 
  y = y + 4;           //then add 4 so the square goes up 4
// move the square up if i'm pressing the mouse
//stop going up if square reaches the top

if (mousePressed) {
  if(y > 0) {  
    y = y - 8; 
   }
}  

  /*else if(y != height){
   // go back down when i let go of the mouse 
   
   for (int i = 0; i < 360; i++) {
     y = y + 1;
     delay(1);
  }*/
 }
}
