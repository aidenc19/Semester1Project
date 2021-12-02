public class Laser {
  private PVector pos, size, vel;
  private color c;
  private boolean active = true;
  
  public Laser(PVector pos){
    this.pos = pos;
    vel = new PVector(0,-15);
    size = new PVector(10,4);
    c = color(2,28,164);
  }
  
  public void show() {
   fill(c); 
   rect(pos.x,pos.y,size.y,size.x);
  }
  
    public void move() {
    pos.add(vel);
  }
 
}
