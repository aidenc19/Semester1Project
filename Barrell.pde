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

 public void velChange1(){
     if(b1.pos.x >= 750 || b1.pos.x <= 50){
     b1.vel.x = -b1.vel.x;
    } 
}
 public void velChange2(){
     if(b2.pos.x >= 750 || b2.pos.x <= 50){
     b2.vel.x = -b2.vel.x;
    } 
}
public void velChange3(){
     if(b3.pos.x >= 750 || b3.pos.x <= 50){
     b3.vel.x = -b3.vel.x;
    } 
}

public void velChange4(){
     if(b4.pos.x >= 750 || b4.pos.x <= 50){
     b4.vel.x = -b4.vel.x;
    } 
}
public void velChange5(){
     if(b5.pos.x >= 750 || b5.pos.x <= 50){
     b5.vel.x = -b5.vel.x;
    } 
}
public void velChange6(){
     if(b6.pos.x >= 750 || b6.pos.x <= 50){
     b6.vel.x = -b6.vel.x;
    } 
}
}
