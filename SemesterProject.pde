Enemy[] enemies = new Enemy[50];
Laser[] lasers = new Laser[100];
int lasersFired = 0;

public void setup() {
 size(800,800);
 spawnEnemies();
}

public void draw(){
 background(0); 
  for (int i = 0; i < lasers.length; i++) {
    if (lasers[i] != null && lasers[i].active) {
      lasers[i].show();
      lasers[i].move();
    }
  }
 for (int i = 0; i < enemies.length; i++) {
 enemies[i].show();
 enemies[i].move();
 enemies[i].collide();
 enemies[i].destroy();
 enemies[i].health();
 }
}

private void spawnEnemies() {
  for (int i = 0; i < enemies.length; i++) {
    enemies[i] = new Enemy((int)(Math.random()*800),(int)(Math.random()*780));
  }
}

public void mouseReleased() {
  Laser laser = new Laser(new PVector(mouseX,mouseY));
  lasers[lasersFired] = laser;
  lasersFired++;
}
