import java.util.*;
Game game = new Game();

void setup(){
  size(500, 500);
  game.load();
}

void draw(){
  game.play();
}

void keyPressed(){
  game.keyDown(key);
}

void keyReleased(){
  game.keyUp(key);
}
