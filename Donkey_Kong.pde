Player player;
Floor floor;
Floor f1;
Donkey kong;
Barrell barrell;

public void setup() {
  size(800,500);
  player = new Player(50, height-50);
  floor = new Floor(50,height-30);
  f1 = new Floor(50,250);
  kong = new Donkey(770,600);
  barrell = new Barrell(70, 0);
}

public void draw() {
  background(0);
  player.show();
  player.canMove();
  player.move();
 floor.show();
 f1.show();
 kong.show();
 player.collide();
 barrell.show();
 //barrell.move();
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
    player.vel.y = player.vel.y + 12;
  }
}
