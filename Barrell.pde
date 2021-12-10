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
         pos.add(vel);
    }
  
  public void velChange(){
     if(pos.x >= 750 || pos.x <= 50){
    vel.x = -vel.x;
    } 
}
}
