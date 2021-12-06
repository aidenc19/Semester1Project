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
      barrell.pos.y = barrell.pos.y +73;
     barrell.vel.x = -barrell.vel.x;
    } 
}
}
