class Pregunta{
  PImage Preguntas;
  void setup(){
    size(900, 600);
    Preguntas=loadImage("Preguntas.png");
  }
  
  void pantallaPregunta(){
    image(Preguntas,0,0); 
  }
  
}
