public class Barrell{
  private PVector pos, vel;
  private final int SPEED = 2, SIZE = 30;
  public boolean active = true;
  
  public Barrell(int x, int y){
     pos = new PVector(140,-15);
    vel = new PVector(1.5,0);
  }
  public void show() {
   fill(229,83,0);
   circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    if (barrell.pos.x >= 10) {
         pos.add(vel);
    }
  }
}
