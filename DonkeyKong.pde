public class Donkey{
 private PVector pos;
 
 public Donkey(int x, int y) {
    pos = new PVector(50,-80);
 }
 
 public void show() {
       fill(181,101,29);
    rect(pos.x,pos.y,45,80);
 }
}
