Player player;
Floor floor;
Floor f1;
Floor f2;
Floor f3;

Donkey kong;
Barrell barrell;

public void setup() {
  size(800,500);
  player = new Player(50, 455);
  floor = new Floor(50,475);
  f1 = new Floor(0,350);
  f2 = new Floor(50,225);
  f3 = new Floor(0,100);
  kong = new Donkey(70,30);
  barrell = new Barrell(140, 85);

}

public void draw() {
  background(0);
  player.show();
  player.canMove();
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
    player.vel.y = player.vel.y+13;
  }
}
