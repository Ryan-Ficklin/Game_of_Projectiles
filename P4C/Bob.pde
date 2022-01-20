class Bob extends AbstractSprite{
  int xSpeed, ySpeed;
  Bob(int x, int y, int w, int h){
   super(x, y, w, h);
    xSpeed = (int)random(-3,3);
    // ternary operator
    ySpeed = ((int)random(0,2)) == 1 ? -1 : 1; // random -1 or 1 only, no zero
  }
  void move(){
    x += xSpeed;
    y += ySpeed;
    if(x < 0 + w/2 || x > width - w/2) xSpeed *= -1;
    if(y < 0 + h/2 || y > height - h/2) ySpeed *= -1;
  }
  void collide(){
    
  }
}
