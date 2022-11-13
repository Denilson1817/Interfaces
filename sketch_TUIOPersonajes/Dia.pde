import gifAnimation.*;
PImage[] animation;
Gif bgGif;

  class Dia{  
  
  void setup(){
  size(900,600);
  Dias=loadImage("Dias.png");
  background(0);
  }
  
  void pantallaDia(){
    image(Dias,0,0);
  }
  
}
