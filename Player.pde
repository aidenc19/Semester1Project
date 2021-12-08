public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 2, SIZE = 20;
  public boolean active = true;
  
  public Player(int x, int y) {
    hp = 100;
    score = 0;
    pos = new PVector(x,y);
    vel = new PVector(0,0);
  }
  
  public void show() {
    fill(255,30,30);
    rect(pos.x,pos.y,SIZE,SIZE);
  }
  
  public void move() {
    if (canMove() == true) {
         pos.add(vel);
    }
  }
  
  
  
  public boolean canMove() {
    boolean canMove;
    PVector newPos = PVector.add(pos, vel);
    if(newPos.y < -21 || newPos.y   > height-20 || newPos.x < 0 || newPos.x >780) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
public void collide() {
  if (player.pos.y >= 452){
    player.vel.y = 0;
   }
   if(player.pos.y >=328 && player.pos.y <=360){
    player.vel.y = 0; 
   }
   else if(player.pos.x >=780 && player.pos.x <= 800){
    player.vel.y = player.vel.y-1;
   }
   if(player.pos.y <= 350 && player.pos.y >= 328){
    player.vel.y = 0; 
   }
   if(player.pos.y >=205 && player.pos.y <=238){
    player.vel.y=0; 
   }
   if(player.pos.x >=0 && player.pos.x <= 5){
    player.vel.y = player.vel.y-0.5; 
   }
    if(player.pos.y <= 211 && player.pos.y >= 210){
    player.vel.y = 0; 
   }
   if(player.pos.y >=80 && player.pos.y <=115){
    player.vel.y = 0; 
   }
    if(player.pos.x >=780 && player.pos.x <= 800){
    player.vel.y = player.vel.y-0.5; 
   }
     if(player.pos.y <= 91 && player.pos.y >= 90){
    player.vel.y = 0; 
   }
     if(player.pos.y <= 350 && player.pos.y >= 328){
    player.vel.y = 0; 
   }
}

public void enemy() {
double dist = PVector.sub(this.pos,barrell.pos).mag();
    if (dist <= this.SIZE / 2 + barrell.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}

public boolean canMove1() {
    boolean canMove1;
    PVector newPos = PVector.add(pos, vel);
   if(newPos.x == f1.pos.x || newPos.y == f1.pos.y || newPos.y == f1.pos.y){
      canMove1 = false;
      player.active = false;
      System.out.println("collision");
   }
    else {
      canMove1 = true;
    }
    return canMove1;
  }
 public void enemy1() {
double dist = PVector.sub(this.pos,b1.pos).mag();
    if (dist <= this.SIZE / 2 + b1.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}
 public void enemy2() {
double dist = PVector.sub(this.pos,b2.pos).mag();
    if (dist <= this.SIZE / 2 + b2.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}
 public void win() {
double dist = PVector.sub(this.pos,kong.pos).mag();
    if (dist <= this.SIZE / 2 + kong.SIZE / 2) {
  player.active = false; 
  System.out.println("win");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Won",width/2, height/2);
    noLoop(); 
 }
}
public void enemy3() {
double dist = PVector.sub(this.pos,b3.pos).mag();
    if (dist <= this.SIZE / 2 + b3.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}

public void enemy4() {
double dist = PVector.sub(this.pos,b4.pos).mag();
    if (dist <= this.SIZE / 2 + b4.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}

public void enemy5() {
double dist = PVector.sub(this.pos,b5.pos).mag();
    if (dist <= this.SIZE / 2 + b5.SIZE / 2) {
  player.active = false; 
  System.out.println("hit");
    fill(255);
 textSize(48);
    textAlign(CENTER,CENTER);
    text("You Died",width/2, height/2);
    noLoop(); 
 }
}
}
