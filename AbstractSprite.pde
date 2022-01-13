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
  
  void render(){
    fill(col);
    ellipse(x, y, w, h);
  }
  
}
