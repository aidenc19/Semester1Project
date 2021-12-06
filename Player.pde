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
    if(newPos.y < 0 || newPos.y   > height-20 || newPos.x < 0 || newPos.x >780) {
      canMove = false;
    }
   if(player.pos.x >= f1.pos.x && player.pos.y >= f1.pos.y && player.pos.y <= f1.pos.y){
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

}
