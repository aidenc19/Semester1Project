Player player;
Floor floor;
Floor f1;
Floor f2;
Floor f3;
Floor f4;
Floor f5;
Donkey kong;
Barrell barrell;

public void setup() {
  size(800,500);
  player = new Player(50, height-55);
  floor = new Floor(50,height-27);
  f1 = new Floor(0,400);
  f2 = new Floor(50,327);
  f3 = new Floor(0,254);
  f4 = new Floor(50,181);
  f5 = new Floor(0,108);
  kong = new Donkey(770,600);
  barrell = new Barrell(140, 93);

}

public void draw() {
  background(0);
  player.show();
  player.canMove();
  player.move();
 floor.show();
 f1.show();
 f2.show();
 f3.show();
 f4.show();
 f5.show();
 kong.show();
 player.collide();
 barrell.show();
 barrell.move();


 player.enemy();
 barrell.velChange();
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
    player.vel.y = player.vel.y +14;
  }
}
