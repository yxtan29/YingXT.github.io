//DES 37 Coding

//Ex2 - inMotion 
//Ex02_02_TimedEvent 
//NOTE: I'm sorry, it's quite messy
//Ying Xin Tan

//Listed out several times (in seconds), to use when needed later on 
int time1 = 1000; //1 seconds
int time2 = 2000; //2 seconds
int time3 = 3000; //3 seconds
int time4 = 4000; //4 seconds 
int time5 = 5000; //5 seconds

//Rectangles repeatting 
float x = 60;
float y = 120;

float q = 300;
float w = 380;

float m = 220;
float n = 120;

float z = 60;
float v = 360;

float j = 180;

//Assigning different float coordinates because of different timing for each rectangle
float a = 220;
float b = 220;
float c = 220;
float d = 220;

float e = 220;
float f = 220;
float g = 220;
float h = 220;

void setup() {
  size (500, 500);
  pixelDensity(2);
}

void draw() {
  int currentTime = millis(); 

  background(255);
  rectMode(CORNER);
  noStroke();


  if ((currentTime >= time1)&&(currentTime <= time4+700)) {
    fill(0);
    rect(x, y, 20, a);
    a = a - 1.0;
  }

  if ((currentTime >= time2-700)&&(currentTime <= time4+900)) {
    fill(0);
    rect(x+40, y, 20, b);
    b = b - 1.0;
  }

  if ((currentTime >= time2-500)&&(currentTime <= time5)) {
    fill(0);
    rect(x+80, y, 20, c);
    c = c - 1.0;
  }

  if ((currentTime >= time2-300)&&(currentTime <= time5+200)) {
    fill(0);
    rect(x+120, y, 20, d);
    d = d - 1.0;
  }

  if ((currentTime >= time1)&&(currentTime <= time4)) {
    fill(0);
    rect(220, 160, 60, j); //middle rect
    j = j - 0.5;
  }
    if ((currentTime >= time1)&&(currentTime <= time4)) {
    fill(0);
    rect(220, 340, 60, -j); //middle rect
    j = j - 0.5;
  }

  if ((currentTime >= time1)&&(currentTime <= time4+700)) {
    fill(0);
    rect(q, w, 20, -e);
    e = e - 1.0;
  }

  if ((currentTime >= time2-700)&&(currentTime <= time4+900)) {
    fill(0);
    rect(q+40, w, 20, -f);
    f = f - 1.0;
  }

  if ((currentTime >= time2-500)&&(currentTime <= time5)) {
    fill(0);
    rect(q+80, w, 20, -g);
    g = g - 1.0;
  }

  if ((currentTime >= time2-300)&&(currentTime <= time5+200)) {
    fill(0);
    rect(q+120, w, 20, -h);
    h = h - 1.0;
  }

  if (n<160) {
    fill(0);
    rect(m, n, 100, 20);

    fill(0);
    rect(m+120, n, 60, 20);

    fill(0);
    rect(m+200, n, 20, 20);
    m = m + 0.65;
  }

  if (v>300) {
    fill(0);
    rect(z, v, 20, 20);

    fill(0);
    rect(z+40, v, 60, 20);

    fill(0);
    rect(z+120, v, 100, 20);
    z = z - 0.65;
  } 
}