public class Enemy{
public PVector pos, vel;
private int hp;
private final int SPEED = 6, SIZE = 25;
public boolean active = true;

public Enemy(int x,int y){
  hp = 1;
  pos = new PVector(x,y);
  vel = new PVector(SPEED,SPEED);
}

public void show() {
 fill( 255,0,0);
 circle(pos.x,pos.y,SIZE);
}

public void move(){
 pos.add(vel); 
}

 public void collide() {
  if (pos.y >= 780){
   vel.y = -vel.y;
  }
  if(pos.y <= 20){
    vel.y = -vel.y;
  }
  if(pos.x <= 20){
    vel.x = -vel.x;
  }
  if(pos.x >= 780){
    vel.x = -vel.x;
  }
}

public void destroy(){
  if(mouseX>= this.pos.x || mouseY >= this.pos.y){
    hp=0;
  active = false;
  }
}

public void health(){
 if(hp <=0){
  this.active = false; 
 }
}
}
