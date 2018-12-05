//DES 37 - Coding

//Ex03 - freePatterns
//Ex03_03_Animated
//Ying Xin Tan

void setup() {
  size(800, 800);
  pixelDensity(2);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background (#fffff5);
  noStroke();
  ellipseMode(RADIUS);

  smallcircles();
  bigcircles();
  halos();
  changingcolors();
  //sidelines();
  downlines();
  uplines();
}

//Radius Size
float r=20;
//Speed for Small Circle
float a = TWO_PI;
float aSpeed=0.10;
//Speed for Big Circle
float c = TWO_PI;
float cSpeed =0.10;

void smallcircles() {
  for (int i=80; i<width; i+=160) {
    for (int j=80; j<height; j+=160) {
      noStroke();
      arc(i, j, r, r, 0, a);
    }
  }
  a = a - aSpeed;
  if ((a<=0)||(a>=TWO_PI)) {
    aSpeed=-aSpeed;
  }
}

void bigcircles() {
  for (int i=80; i<width; i+=160) {
    for (int j=80; j<height; j+=160) {
      noStroke();
      arc(i, j, r+10, r+10, 0, c);
    }
  }
  c = c - cSpeed;
  if ((c<=0)||(c>=TWO_PI)) {
    cSpeed=-cSpeed;
  }
}

void changingcolors() {
  if (key=='1') {                   // 1 = pink
    fill(#e85a71, 120);
  } else if (key=='2') {            // 2 = orange
    fill(#fc913a, 120);
  } else if (key=='3') {            // 3 = wine
    fill(#8F2D56, 120);
  } else if (key=='4') {            // 4 = blue
    fill(#4ea1d3, 120);
  } else if (key=='5') {            // 5 = green
    fill(#79bd9a, 120);
  } else if (key=='6') {            // 6 = peach
    fill(#ff7761, 120);
  } else if (key=='7') {            // 7 = tan
    fill(#c6a49a, 120);
  } else if (key=='8') {            // 8 = brown
    fill(#5e5e5f, 120);
  } else if (key=='9') {            // 9 = violet
    fill(#9055A2, 120);
  } else {                          // 0 = reset
    fill(218, 65, 70, 100);
  }
}

//Arc values
float q = THIRD_PI;
float qSpeed=0.05;
float w = QUARTER_PI+TWO_PI;
float wSpeed=0.05;
//Dot strokeWeight value
float value=3;

void halos() {
  noFill();
  stroke(#8283a7);
  strokeWeight(value);
  for (int i=80; i<width; i+=160) {
    for (int j=80; j<height; j+=160) {
      arc (i, j, r+20, r+20, q, w);
    }
  }
  q = q + qSpeed;
  if (q>=w) {
    w = w + wSpeed;
  }
  if (mousePressed == true) {
    value = value+0.25;
    if (value>15) {
      value = 2;
    }
  }
}

float y = 0;
float ySpeed=3;
float zSpeed=3;
float z = 50;

void downlines() {
  strokeWeight(15);
  stroke(#8283a7, 180);
  for (int x=160; x<=600; x+=320) {
    line(x, y, x, z);
    z = z + zSpeed;
  }
  if ((z>=height)||(z<=0)) {
    z = z + zSpeed;
    zSpeed=-zSpeed;
  }
}

float g = 50;
float gSpeed=3;
float hSpeed=3;
float h = 800;

void uplines() {
  stroke(#8283a7, 100);
  for (int x=320; x<=width; x+=320) {
    line(x, g, x, h);
    g = g + gSpeed;
  }
  if ((g>=height)||(g<=0)) {
    g = g - gSpeed;
    gSpeed=-gSpeed;
  }
}

//void keyPressed() {
//  if (keyCode == ENTER) {
//    saveFrame("ex04_03_Animated.tif");
//  }
//}