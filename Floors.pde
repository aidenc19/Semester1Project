public class Floor{
  public PVector pos, SIZE;
  private boolean active = true;
  
  
  public Floor(int x, int y){
    SIZE = new PVector(750, 25);
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(255,105,180);
    rect(pos.x,pos.y,SIZE.x,SIZE.y);
  }

}
