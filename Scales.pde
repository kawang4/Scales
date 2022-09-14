void setup() {
  size(400, 400);
  noLoop();
  background ((int)(Math.random()*255), 220, 172);
}
void draw() {
  // w > y > 20
  for (int i = 0; i <= 500; i += 50) {
   for (int j = 20; j <= 500; j += 50) {
     scale(j, i, 50, 30);
   }
  }
}
void scale(int x, int w, int y, int z) {
  fill((int)(Math.random()*255), 142, 220);
  stroke(255, 255, 255);
  beginShape();
  curveVertex(x, w);
  curveVertex(x, w); // first point
  curveVertex(x+z, w-y); // second
  curveVertex(x+(z/2), w); // third
  curveVertex(x+z, w+y); // fourth
  curveVertex(x, w+(y/2)); // fifth
  curveVertex(x-z, w+y); // sixth
  curveVertex(x-(z/2), w); // seventh
  curveVertex(x-z, w-y); // eighth
  curveVertex(x, w); // beginning 
  curveVertex(x, w); // beginning
  endShape();
  // top triangle
  fill((int)(Math.random()*255), 142, 220);
  beginShape();
  curveVertex(x+z, w-y); // second
  curveVertex(x+z, w-y); // second
  curveVertex(x, w); // first point
  curveVertex(x-z, w-y); // eighth
  curveVertex(x, w-5);
  curveVertex(x+z, w-y); // second
  curveVertex(x+z, w-y); // second
  endShape();
  beginShape();
  curveVertex(x+z, w+y); // fourth
  curveVertex(x+z, w+y); // fourth
  curveVertex(x, w+(y/2)); // fifth
  curveVertex(x-z, w+y); // sixth
  curveVertex(x, w+5);
  curveVertex(x+z, w+y); // fourth
  curveVertex(x+z, w+y); // fourth

  endShape();
}
