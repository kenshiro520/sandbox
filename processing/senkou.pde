import ddf.minim.*;
Minim minim;
AudioInput in;

void setup()
{
  size (500, 500);
  colorMode(RGB, 256, 256, 256, 256);
  
  minim = new Minim(this);
  minim.debugOn();
  in = minim.getLineIn(Minim.STEREO, 512);
}

int x0, y0, x1, y1;
int x2, y2, x3, y3;

void draw()
{
  background(0);
  smooth();
  fill(250, 100, 0, 50);
  
  x0 = x1 = 0;
  y0 = y1 = 0;
  x2 = x3 = 0;
  y2 = y3 = 0;
 
  stroke(150, 150, 0, 100);
  strokeWeight(5);
  line(width / 2, height / 20, width / 2, height / 2);

  stroke(250, 100, 0, 50);
  strokeWeight(1);
  for(int i = 0; i < in.bufferSize() - 1; i += 5) {
    float r1 = in.left.get(i) * 150 + 5;
    x1 = x0;
    y1 = y0;
    x0 += -r1 / 2 + random(r1);
    y0 += -r1 / 2 + random(r1);
    line(x0 + width / 2, y0 + height / 2, x1 + width / 2, y1 + height / 2);
    float r2 = in.right.get(i) * 200 + 10;
    x3 = x2;
    y3 = y2;
    x2 += -r2 / 2 + random(r2);
    y2 += -r2 / 2 + random(r2);
    line(x2 + width / 2, y2 + height / 2, x3 + width / 2, y3 + height / 2);
    float r3 = in.right.get(i) * 15 + 10;
    ellipse(width / 2,height / 2, r3, r3);
  }
}

void stop()
{
  in.close();
  minim.stop();
  super.stop();
}

