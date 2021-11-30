public class Player {
  private PVector pos, vel;
  private int hp, score;
  private final int SPEED = 5, SIZE = 20;
  
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
    if(newPos.y < 0 || newPos.y   > 380 || newPos.x < 0 || newPos.x >780) {
      canMove = false;
    }
    else {
      canMove = true;
    }
    return canMove;
  }
}
