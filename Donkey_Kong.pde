Player player;
Floor[] floor = new Floor[6];

public void setup() {
  size(800,500);
  player = new Player(50, height - 50);
  spawnFloor();
}

public void draw() {
  background(0);
  player.show();
  player.canMove();
  player.move();
  for (int i = 0; i < floor.length; i++){
  floor[i].show();
  }
}

public void keyPressed() {
  if (key == 'w') {
    player.vel.y = -player.SPEED;
  }
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 's') {
    player.vel.y = player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
}

public void keyReleased() {
  if (key == 'w') {
    player.vel.y = 0;
  }
  if (key == 'a') {
    player.vel.x = 0;
  }
  if (key == 's') {
    player.vel.y = 0;
  }
  if (key == 'd') {
    player.vel.x = 0;
  }
}

private void spawnFloor() {
  for (int i = 0; i < floor.length; i++) {
    floor[i] = new Floor((30), (height-30));
  }
}
