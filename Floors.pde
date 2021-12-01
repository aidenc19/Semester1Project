public class Floor{
  public PVector pos, size;
  private boolean active = true;
  
  
  public Floor(int x, int y){
    size = new PVector(750, 25);
    pos = new PVector(50,height-30);
  }
  
  public void show() {
    fill(255,105,180);
    rect(pos.x,pos.y,size.x,size.y);
  }

}
