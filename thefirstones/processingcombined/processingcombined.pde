 
int a = 0;      // Create a variable "a" of the datatype "int"
float b = 50;      // Create a variable "b" of the datatype "float"
float c = 100;     // create another variable "c" of the datatype "float"
float d = 200;     // create another variable "d" of the datatype "float"
float e = 250;     // create variable "e" of the datatype "float"
float f = 350;     // create another variable 
float g = 400;     // creat another variable
float x = 300;     // x location of square
float y = 150;     // y location of square

void setup() {
  size(640, 360);      // Declares the size of the board
  stroke(255);        // Set line drawing color to white
  frameRate(30);      // declares the speed of the board
}

void draw() {
  background(2,133,165);    // Clear the screen with a black background
  rectMode(CENTER); // square is in the center of the x axis
  rect(x,y,10,10);  // draws the square at the x,y cordinants declared
                    // at the top and its size is 10x10
  a = a + 5;            
  b = b + 5;       //making all variables increase acrossed
  c = c + 5;       // background in increments of 5
  d = d + 5;       
  e = e + 5;
  f = f + 5;
  g = g + 5;
  line(a, 0, a, height/2);      //drawing each line
  line(b, height/2, b, height);
  line(c, 0, c, height/2);
  line(d, height/2, d, height);
  line(e, 0, e, height/3);
  line(f, height/2, f, height/4);
  line(g, 300, g, height/2);
  
  if(a > width) {          //if the lines reach the edge of the screen
    a = 0;                 // then they will restart at "0" or the
  }                        // the left side of the screen
  if(b > width) {
    b = 0;
  }
  if (c > width) {
    c = 0;
  }
  if (d > width) {
    d = 0;
  }
  if (e > width) {
    e = 0;
  }
  if (f > width) {
    f = 0;
  }
   if (g > width) {
    g = 0;
  }
  //move the square down until the bottom unless mouse is clicked
if (y <= height) {        //if the y value is 360, lower on the screen, 
  y = y + 4;           //then add 4 so the square goes down 4

// move the square up if i'm pressing the mouse
//stop going up if square reaches the top

if (mousePressed) {    //if mouse is clicked
  if(y > 0) {  
    y = y - 8; 
   }
  }   
 }
}

