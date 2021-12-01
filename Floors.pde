public class Floor{
  public PVector pos, size;
  private boolean active = true;
  
  
  public Floor(int x, int y){
    size = new PVector(750, 25);
    pos = new PVector(50,height-30);
  }
  
  public void show() {
    fill(255,105,180);
  translate(pos.x,pos.y);
    rect(0,0,size.x,size.y);
  }
   public void show2() {
    fill(255,105,180);
  translate(-pos.x,-pos.y+400);
    rect(0,0,size.x,size.y);
  }
 public void show3() {
    fill(255,105,180);
  translate(pos.x,-pos.y+390);
    rect(0,0,size.x,size.y);
  }
  public void show4() {
    fill(255,105,180);
  translate(-pos.x,-pos.y+380);
    rect(0,0,size.x,size.y);
  }
   public void show5() {
    fill(255,105,180);
    translate(pos.x,-pos.y+390);
    rect(0,0,size.x,size.y);
  }
   public void show6() {
    fill(255,105,180);
    translate(-pos.x,-pos.y+390);
    rect(0,0,size.x,size.y);
  }
}
