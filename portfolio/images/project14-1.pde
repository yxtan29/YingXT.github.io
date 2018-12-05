//DES 37 Coding

//Ex2 - inMotion 
//Ex02_04_MouseLocation
//NOTE: I'm sorry, it's quite messy
//Ying Xin Tan

void setup() {
  size(500, 500);
  pixelDensity(2);
}

void draw() {
  background(0);
  rectMode(CORNER);
  noStroke();

  fill(255);
  rect(60, 40, 80, 80);

  fill(255);
  rect(100, 80, 80, 80);

  fill(255);
  rect(140, 120, 80, 80);

  fill(255);
  rect(180, 160, 80, 80);

  fill(255);
  rect(220, 200, 80, 80);

  fill(255);
  rect(260, 240, 80, 80);

  fill(255);
  rect(300, 280, 80, 80);

  fill(255);
  rect(340, 320, 80, 80);

  fill(255);
  rect(380, 360, 80, 80);

  fill(0);
  rect(100, 80, 40, 40);

  fill(0);
  rect(140, 120, 40, 40);

  fill(0);
  rect(180, 160, 40, 40);

  fill(0);
  rect(220, 200, 40, 40);

  fill(0);
  rect(260, 240, 40, 40);

  fill(0);
  rect(300, 280, 40, 40);

  fill(0);
  rect(340, 320, 40, 40);

  fill(0);
  rect(380, 360, 40, 40);

  stroke(0);
  strokeWeight(1.5);
  line(100, 0, 100, 80); // top left, square left 

  stroke (0);
  strokeWeight(1.5);
  line(0, 80, 100, 80); // top left, square bottom 

  stroke(255);
  strokeWeight(1.5);
  line(20, 0, 20, 500); // left, line #1

  stroke(255);
  strokeWeight(1.5);
  line(40, 0, 40, 500); // left, line #2

  stroke(255);
  strokeWeight(1.5);
  line(60, 0, 60, 500); // left, line #3

  stroke(255);
  strokeWeight(1.5);
  line(0, 20, 500, 20); // top horizontal line 

  stroke(255);
  strokeWeight(1.5);
  line(100, 0, 100, 40); // left, tiny line #4

  stroke(0);
  strokeWeight(1.5);
  line(420, 400, 420, 500); 

  stroke(0);
  strokeWeight(1.5);
  line(420, 400, 500, 400);

  stroke(255);
  strokeWeight(1.5);
  line(420, 440, 420, 500);

  stroke(255);
  strokeWeight(1.5);
  line(460, 400, 500, 400);

  stroke(255);
  strokeWeight(1.5);
  line(0, 460, 500, 460); // bottom, line #1

  stroke(255);
  strokeWeight(1.5);
  line(0, 480, 500, 480); // bottom, line #2

  stroke(255);
  strokeWeight(1.5);
  line(480, 0, 480, 500); // right line 

  noStroke();

  if (mouseX<20) {
    rectMode(CORNER);
    fill(255);
    rect(0, 0, 20, height);
  } else if ((mouseX>20)&&(mouseX<40)) {
    rectMode(CORNER);
    fill(255);
    rect(20, 0, 20, height);
  } else if ((mouseX>40)&&(mouseX<60)) {
    rectMode(CORNER);
    fill(255);
    rect(40, 0, 20, height);
  } else if ((mouseX>480)&&(mouseX<500)) {
    rectMode(CORNER);
    fill(255);
    rect(480, 0, 20, height);
  } else if (mouseY<20) {
    rectMode(CORNER);
    fill(255);
    rect(0, 0, width, 20);
  } else if ((mouseY>460)&&(mouseY<480)) {
    rectMode(CORNER);
    fill(255);
    rect(0, 460, width, 20);
  } else if ((mouseY>480)&&(mouseY<500)) {
    rectMode(CORNER);
    fill(255);
    rect(0, 480, width, 20);
  } else if ((mouseX>60)&&(mouseX<100)) {
    rectMode(CORNER);
    fill(255);
    rect(60, 20, 40, height/12);
    rect(60, 120, 40, height-160);
  } else if ((mouseX>100)&&(mouseX<120)) {
    rectMode(CORNER);
    fill(255);
    rect(100, 20, 40, height/8 - 2);
    rect(100, 160, 40, height - 200);
    fill(#f3d4d5);
    rect(100, 80, 40, 40);
  } else if ((mouseX>120)&&(mouseX<160)) {
    rectMode(CORNER);
    fill(255);
    rect(140, 20, 40, height/6);
    rect(140, 200, 40, height - 240);
    fill(#e6a9ab);
    rect(140, 120, 40, 40);
  } else if ((mouseX>160)&&(mouseX<200)) {
    rectMode(CORNER);
    fill(255);
    rect(180, 20, 40, height/4);
    rect(180, 240, 40, height - 280);
    fill(#da7d81);
    rect(180, 160, 40, 40);
  } else if ((mouseX>200)&&(mouseX<240)) {
    rectMode(CORNER);
    fill(255);
    rect(220, 20, 40, height/3);
    rect(220, 280, 40, height - 320);
    fill(#cd5257);
    rect(220, 200, 40, 40);
  } else if ((mouseX>240)&&(mouseX<280)) {
    rectMode(CORNER);
    fill(255);
    rect(260, 20, 40, height/2 - 50);
    rect(260, 320, 40, height - 360);
    fill(#c1272d);
    rect(260, 240, 40, 40);
  } else if ((mouseX>280)&&(mouseX<320)) {
    rectMode(CORNER);
    fill(255);
    rect(300, 20, 40, height/2);
    rect(300, 360, 40, height/5);
    fill(#911d22);
    rect(300, 280, 40, 40);
  } else if ((mouseX>320)&&(mouseX<360)) {
    rectMode(CORNER);
    fill(255);
    rect(340, 20, 40, height - 200);
    rect(340, 400, 40, height/8 - 1);
    fill(#611417);
    rect(340, 320, 40, 40);
  } else if ((mouseX>360)&&(mouseX<400)) {
    rectMode(CORNER);
    fill(255);
    rect(380, 20, 40, height - 160);
    rect(380, 440, 40, 20);
    fill(#300a0b);
    rect(380, 360, 40, 40);
  } else if ((mouseX>400)&&(mouseX<440)) {
    rectMode(CORNER);
    fill(255);
    rect(420, 20, 40, height - 120);
    rect(420, 440, 40, 20);
  } else if ((mouseX>460)&&(mouseX<480)) {
    rectMode(CORNER);
    fill(255);
    rect(460, 0, 20, height);
  }
  
  saveFrame("ex02_04_MouseLocation.tif");
}