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
    if(newPos.y < -5 || newPos.y   > height-20 || newPos.x < 0 || newPos.x >780) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
public void collide(){
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
    if(player.pos.y <= 206 && player.pos.y >= 205){
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
   else{
    if (player.pos.y >=-5){
     player.active = false;
    }
}
}

public void enemy(Barrell b) {
double dist = PVector.sub(this.pos,b.pos).mag();
    if (dist <= this.SIZE / 2 + b.SIZE / 2) {
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
}
