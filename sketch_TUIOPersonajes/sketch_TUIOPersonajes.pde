import TUIO.*;
//Declaracion de variables
TuioProcessing tuio;

//Objetos de las clases
Dia dia = new Dia();
Numero numero = new Numero();
Saludo saludo = new Saludo();
Pregunta pregunta = new Pregunta();
boolean banderaPantalla = true;

int contar = 0;

PImage Inicio, Saludos, Preguntas, Dias, Numeros;
void setup(){
  size(900,600);
  //Crear un objeto TUIO
  tuio = new TuioProcessing(this);
  Inicio=loadImage("Inicio.png");
  
  dia.setup();
  pregunta.setup();
  numero.setup();
  saludo.setup();
  //Dibujar la ventana
  image(Inicio,0,0); 
}

//Dibujar la ventana
void draw(){
//Dibuja el boton
/*
rect(630,350,230,90);
fill(0);
textSize(24);*/ 
}

//Metodo Inicio
void Inicio(){
  image(Inicio,0,0);
}

//Saber donde doy click

void mouseClicked(){
  println("click en x=" + mouseX + ", y=" + mouseY );
  
  if(mouseX>=30 && mouseX<=260 && mouseY>=230 && mouseY<=300 && banderaPantalla == true){
    print("sobre el boton");
    saludo.pantallaSaludo();
    banderaPantalla = false;
    
  }
  
  if(mouseX>=660 && mouseX<=850 && mouseY>=500 && mouseY<=570 && banderaPantalla == false){
    print("sobre el boton");
    Inicio(); 
    banderaPantalla = true;
  }
  
  if(mouseX>=35 && mouseX<=265 && mouseY>=365 && mouseY<=455 && banderaPantalla == true){
    print("sobre el boton");
    pregunta.pantallaPregunta();
    banderaPantalla = false;
  }
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=220 && mouseY<=310 && banderaPantalla == true){
    print("sobre el boton");
    dia.pantallaDia();
    banderaPantalla = false;
  } 
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=350 && mouseY<=440 && banderaPantalla == true){
    print("sobre el boton");
    numero.pantallaNumero();
    banderaPantalla = false;
  } 

}
