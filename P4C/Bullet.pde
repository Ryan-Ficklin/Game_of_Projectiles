class Bullet extends AbstractSprite{
  
  Bullet(int x, int y, int w, int h, int xSpeed, int ySpeed, color col){
   super(x,y,w,h,xSpeed,ySpeed,col);
  }
  
  Bullet(int x, int y){
   super(x,y);
   w = 10;
   h = 10;
   xSpeed = 0;
   ySpeed = -10;
   col = color(255);
  }
  
  void move(){
    y += ySpeed;
  }
}
