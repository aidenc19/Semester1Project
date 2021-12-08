Player player;
Floor floor;
Floor f1;
Floor f2;
Floor f3;
Barrell b1;
Donkey kong;
Barrell barrell;
Barrell b2;
Barrell b3;
Barrell b4;
Barrell b5;
PImage img;

public void setup() {
  size(800,500);
  //from donkey kong video game produced by Nintendo
  img = loadImage("donkey.png");
  player = new Player(50, 455);
  floor = new Floor(50,475);
  f1 = new Floor(0,350);
  f2 = new Floor(50,225);
  f3 = new Floor(0,100);
  kong = new Donkey(70,30);
  barrell = new Barrell(140, 85);
  b1 = new Barrell(740, 210);
  b2 = new Barrell(51, 335);
  b3 = new Barrell(740, 335);
   b4 = new Barrell(740, 85);
    b5 = new Barrell(740, 460);
}

public void draw() {
  background(0);
  image(img,-20,-20);
  player.show();
  player.canMove();
  player.enemy2();
  player.canMove1();
  player.move();
 floor.show();
 f1.show();
 f2.show();
 f3.show();
 kong.show();
 player.collide();
 barrell.show();
 barrell.move();
 b1.move();
 b1.show();
 player.enemy();
 barrell.velChange();
 b1.velChange1();
 player.enemy1();
 b2.show();
 b2.move();
 b2.velChange2();
 player.win();
 b3.show();
 b3.move();
 b3.velChange3();
 b4.show();
 b4.move();
 b4.velChange4();
  b5.show();
 b5.move();
 b5.velChange5();
 player.enemy3();
 player.enemy4();
 player.enemy5();
  }


public void keyPressed() {
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
  if(key == 'f') {
    player.vel.y = player.vel.y -10;
  }
}

public void keyReleased() {
  if (key == 'a') {
    player.vel.x = 0;
  }
  if (key == 'd') {
    player.vel.x = 0;
  }
  if(key == 'f') {
    player.vel.y = player.vel.y+13;
  }
}
