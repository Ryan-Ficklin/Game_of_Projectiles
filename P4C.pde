import java.util.*;

ArrayList<Sprite> sprites = new ArrayList<Sprite>();

Player player;

void config(){
 noStroke(); 
 player = new Player(width/2, height-50, 50, 50, 0, 0, color(150, 0, 255));
}

void setup(){
  size(500, 500);
  config();
  sprites.add(player);
  for(int i = 50; i < width; i += 50){
    sprites.add(new Bob(i, 100, 50, 50));
  }
}

void draw(){
  background(0);
  for(Sprite s : sprites){
   s.move();
   s.render();
  }
}

void keyPressed(){
  player.keyDown(key);
}

void keyReleased(){
  player.keyUp(key);
}
