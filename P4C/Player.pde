class Player extends AbstractSprite{
  private boolean left, right, up, down;
  Player(int x, int y, int w, int h, int xSpeed, int ySpeed, color col){
   super(x, y, w, h, xSpeed, ySpeed, col);
   left = false;
   right = false;
   up = false;
   down = false;
  }
  void move(){
    if     (up && down)    { ySpeed = 0;} 
    else if(up)            { ySpeed = -3;} 
    else if(down)          { ySpeed = 3;}
    if     (right && left) { xSpeed = 0;}
    else if(right)         { xSpeed = 3;} 
    else if(left)          { xSpeed = -3;}
    x += xSpeed;
    y += ySpeed;
  }
  
  void keyUp(char key){
    if (key == 'w') {up = false; ySpeed = 0;} 
    if (key == 's') {down = false; ySpeed = 0;}
    if (key == 'a') {left = false; xSpeed = 0;}
    if (key == 'd') {right = false; xSpeed = 0;}
    //if (key == ' ') {fire();}
  }

  void keyDown(char key){
    if (key == 'w') {up = true;} 
    if (key == 's') {down = true;}
    if (key == 'a') {left = true;}
    if (key == 'd') {right = true;}
    if (key == ' ') {fire();}
  }
  
  void fire(){
   game.spawn(new Bullet(this.x, this.y)); 
  }
}
