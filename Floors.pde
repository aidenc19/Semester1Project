public class Floor{
  public PVector pos, size;
  private boolean active = true;
  
  public Floor(int x, int y){
    size = new PVector(750, 25);
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(255,105,180);
  translate(pos.x,pos.y);
    rotate(PI/-60.0);
    rect(0,0,size.x,size.y);
  }
}
