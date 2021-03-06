//use sides of game to get to next level of floor. Sort of as a elevator //<>//
//Floor collision is very tricky. Have to tap F a few times if you get swtuck in the floor
//Dodge barrells rolling on each level by presssing f to jump
//jump into donkey kong at the end to get the you win message
Player player;
Floor floor;
Floor f1;
Floor f2;
Floor f3;
Donkey kong;
Barrell[] barrell= new Barrell[8];
PImage img;

public void setup() {
  size(800,500);
  //from donkey kong video game produced by Nintendo
  img = loadImage("kong3.png");
  player = new Player(50, 455);
  floor = new Floor(50,475);
  f1 = new Floor(0,350);
  f2 = new Floor(50,225);
  f3 = new Floor(0,100);
  kong = new Donkey(70,30);
spawnEnemies();
}

public void draw() {
  background(0);
  for(int i = 0; i < barrell.length; i++) {
    barrell[i].show(); //<>//
    barrell[i].move();
    barrell[i].velChange();
    player.enemy(barrell[i]);
  }
     player.move();
  player.collide();
  player.show();
  player.canMove();
  player.win();
 floor.show();
 f1.show();
 f2.show();
 f3.show();
 kong.show();
 image(img,-20,-50);
  }


public void keyPressed() {
  if (key == 'a') {
    player.vel.x = -player.SPEED;
  }
  if (key == 'd') {
    player.vel.x = player.SPEED;
  }
  if(key == 'f') {
    player.vel.y = -7;
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
    player.vel.y = 7;
  }
}

private void spawnEnemies() {
  int b = 0;
  for (int i = 0; i < barrell.length/2; i++) {
    barrell[b] = new Barrell((int)(Math.random()*750),(int)(85+125*i));
    b += 1;
    barrell[b] = new Barrell((int)(Math.random()*750),(int)(85+125*i));
    b += 1;
  }
}
