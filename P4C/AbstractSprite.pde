abstract class AbstractSprite implements Sprite{
  int x = 0, y = 0, w = 10, h = 10, xSpeed = 0, ySpeed = 0;
  color col = color(255);
  
  AbstractSprite(){  }
  AbstractSprite(int x, int y){
   this.x = x;
   this.y = y;
  }
  AbstractSprite(int x, int y, int w, int h){
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
  }
  AbstractSprite(int x, int y, int w, int h, int xSpeed, int ySpeed, color col){
   this(x, y, w, h);
   this.xSpeed = xSpeed;
   this.ySpeed = ySpeed;
   this.col = col;
  }
  abstract void move();
  
  boolean collide(int x1, int y1, int x2, int y2, int r1, int r2){
     return (Math.sqrt(Math.pow((x2 - x1),2)) + Math.sqrt(Math.pow((y2 - y1),2))) < r1+r2;
  }
  
  void render(){
    fill(col);
    ellipse(x, y, w, h);
  }
  
}
