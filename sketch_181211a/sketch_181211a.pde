// reserve space in memory for an object of type PImage, to store the source image
PImage source;  

// setup() function runs once only
void setup() {

  // create the canvas
  // WIDTH  HEIGHT
  size(800, 530); 
  
  // make the backgound white
  background(255);
 
  // load  from the "data" folder into source object 
  source = loadImage("jk.JPG");

  // 423,999
  source.loadPixels();

  // loop from first pixel, at position 0, to final pixel, at position 423,999
  for (int position = 0; position <= 423999; position += 1) {

    // get brightness of current pixel
    float b = 255 - brightness(source.pixels[position]);
    
    // change brightness value (range of 0 to 255) into a diameter of range 1 to 10 
    float diameter = map(b, 0, 255, 1, 5);
    
    // get the pixel's current position using integer arithmetic, see: http://russellgordon.ca/lcs/ics3u/integer_arithmetic.jpg
    int x = position % width;  // remainder after integer division e.g.: 13 % 5 = 3 
    int y = position / width;  // integer division e.g.: 13 / 5 = 2
    
    // Only draw ellipies for some pixels (every 100 pixels ) 
    // BOOLEAN OPRATORS 
    // && LET'S US CHECK two conditions
    // Only run the code block when both conditions are true.f
    // CONDITION 1    AND     CONDITION 2
    if ((x > 0)&& (y > 0)&& ( y % 5 == 0) && (x % 5 == 0 )) {
    
    // draw an ellipse at position of current pixel
    rect(x, y, diameter, diameter);
    } 
  }
  
}

// draw() runs repeatedly until we tell it to stops
void draw() {

  // we don't need to animate, so stop the automatic loop
  noLoop();
  
}
