public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 2, SIZE = 20;
  public boolean active = true;
  
  public Player(int x, int y) {
    hp = 100;
    score = 0;
    pos = new PVector(50,height-47);
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
    if(newPos.y < 0 || newPos.y   > height-20 || newPos.x < 0 || newPos.x >780) {
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
   else if(player.pos.y >= 378 && player.pos.y <=425){
    player.vel.y = 0; 
   }
   else if (player.pos.x >= 760 && player.pos.x <=800){
     player.vel.y = player.vel.y;
   }
   }

public void enemy() {
double dist = PVector.sub(this.pos,barrell.pos).mag();
    if (dist <= this.SIZE / 2 + barrell.SIZE / 2) {
  player.active = false; 
 }
}
}
