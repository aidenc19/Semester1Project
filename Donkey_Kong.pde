Player player;
Floor floor;
Donkey kong;
Barrell barrell;

public void setup() {
  size(800,500);
  player = new Player(50, height/2);
  floor = new Floor(50,height-30);
  kong = new Donkey(770,600);
  barrell = new Barrell(70, 0);
}

public void draw() {
  background(0);
  player.show();
  player.canMove();
  player.move();
 floor.show();
 floor.show2();
 floor.show3();
 floor.show4();
 floor.show5();
 floor.show6();
 kong.show();
 player.collide();
 barrell.show();
 barrell.move();
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
