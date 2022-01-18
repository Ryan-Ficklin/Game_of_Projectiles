import java.util.*;

class Game {
  
  ArrayList<Sprite> sprites = new ArrayList<>();
  Player player;
  
  void config() {
    noStroke();
  }
  
  void load() {
    config();
    player = new Player(width/2, height-50, 50, 50, 0, 0, color(150, 0, 255));
    sprites.add(player); 
    for(int i = 50; i < width; i += 50){
      sprites.add(new Bob(i, 100, 50, 50));
    }
  }
  
  void play() {
    background(0);
    for(Sprite s : sprites) {
      s.move();
      s.render();
    }
  }
  
  void keyUp(char key) {
    player.keyUp(key);
  }
  
  void keyDown(char key) {
    player.keyDown(key);
  }
  
  void spawn(AbstractSprite sprite){
   //print("spawned");
   sprites.add(sprite);
  }
}
