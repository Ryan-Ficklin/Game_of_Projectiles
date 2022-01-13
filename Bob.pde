class Bob extends AbstractSprite{
  Bob(int x, int y, int w, int h){
   super(x, y, w, h);
    int xSpeed = (int)random(-3,3);
    // ternary operator
    int ySpeed = ((int)random(0,2)) == 1 ? -1 : 1; // random -1 or 1 only, no zero
  }
  void move(){
    x += xSpeed;
    y += ySpeed;
    
    if(x < 0 + w/2 || x > width - w/2) xSpeed *= -1;
    if(y < 0 + h/2 || y > height - h/2) ySpeed *= -1;
  }
}
