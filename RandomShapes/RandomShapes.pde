// runs once
void setup() {
  
  // canvas
  size(500, 500);
  
  // background white
  background(255);
  
}

// runs repeatedly
void draw() {
  
  // random start position
  float x1 = random(0, 500);
  float y1 = random(0, 500);
  
  // random end possition
  float x2 = random(0,500);
  float y2 = random(0,500);
  
  // draw a line with the positions created
  line(x1, y1, x2, y2);
}
