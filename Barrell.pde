public class Barrell{
  private PVector pos, vel;
  private final int SPEED = 2, SIZE = 30;
  public boolean active = true;
  
  public Barrell(int x, int y){
     pos = new PVector(x,y);
    vel = new PVector(1.5,0);
  }
  public void show() {
   fill(229,83,0);
   circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    if (barrell.pos.x >= 0) {
         pos.add(vel);
    }
  }
  
  public void velChange(){
     if(barrell.pos.x >= 750 || barrell.pos.x <= 50){
      barrell.pos.y = barrell.pos.y +125;
     barrell.vel.x = -barrell.vel.x;
    } 
}
 public void velChange1(){
     if(b1.pos.x >= 750 || b1.pos.x <= 50){
      b1.pos.y = b1.pos.y +125;
     b1.vel.x = -b1.vel.x;
    } 
}
}
