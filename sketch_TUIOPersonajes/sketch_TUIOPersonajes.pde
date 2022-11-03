import TUIO.*;
//Declaracion de variables
TuioProcessing tuio;

//Objetos de las clases
Dia dia = new Dia();
Numero numero = new Numero();
Saludo saludo = new Saludo();
Pregunta pregunta = new Pregunta();


PImage Inicio, Saludos, Preguntas, Dias, Numeros;
void setup(){
  size(900,600);
  //Crear un objeto TUIO
  tuio = new TuioProcessing(this);
  Inicio=loadImage("Inicio.png");
 
  dia.setup();
  numero.setup();
  pregunta.setup();
  saludo.setup();
  //Dibujar la ventana
  image(Inicio,0,0); 
}

//Metodo Inicio
void Inicio(){
  image(Inicio,0,0);
  
}

void mousePressed(){
  println("click en x=" + mouseX + ", y=" + mouseY );
  
  if(mouseX>=30 && mouseX<=260 && mouseY>=230 && mouseY<=300){
    print("sobre el boton");
    saludo.pantallaSaludo(); 
  }
  
  if(mouseX>=660 && mouseX<=850 && mouseY>=500 && mouseY<=570){
    print("sobre el boton");
    Inicio(); 
  }
  
  if(mouseX>=35 && mouseX<=265 && mouseY>=365 && mouseY<=455){
    print("sobre el boton");
    pregunta.pantallaPregunta();
  }
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=220 && mouseY<=310){
    print("sobre el boton");
    dia.pantallaDia();
  } 
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=350 && mouseY<=440){
    print("sobre el boton");
    numero.pantallaNumero();
  }
}
