class Numero{
  PImage Numeros;
  void setup(){
    size(900,600);
    Numeros=loadImage("Numeros.png");  
  }
  void pantallaNumero(){
    image(Numeros,0,0);
  }

}
