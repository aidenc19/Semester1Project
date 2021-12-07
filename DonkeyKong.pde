public class Donkey{
 private PVector pos;
 
 public Donkey(int x, int y) {
    pos = new PVector(x,y);
 }
 
 public void show() {
       fill(181,101,29);
    rect(pos.x,pos.y,45,70);
 }
}
