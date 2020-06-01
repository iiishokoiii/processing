int numFrames=1;
float xstart = random(10);
float xn = xstart;
float yn = random(10);

void setup() {
  size(500, 500);
  frameRate(60);
  background(255);
  blendMode(BLEND);
  smooth();
}

void draw() {
  for(int y=0;  y<=height; y+=5) {
    xn = xstart;
    yn += 0.1;
    for(int x=0;  x<=width; x+=5) {
      xn += 0.1;
      drawPoint(x, y, noise(x,y));
    }
  }
  countFrames(numFrames, false);
}

void drawPoint(float x, float y, float noise) {
  int alpha = int(noise * 255);
  float len = 10 * noise;
  stroke(0, alpha);
  rect(x, y, len, len);
}