import TUIO.*;
//Declaracion de variables
TuioProcessing tuio;

import gifAnimation.*;


Gif numeroUno;
Gif numeroDos;

//Objetos de las clases
Dia dia = new Dia();
Numero numero = new Numero();
Saludo saludo = new Saludo();
Pregunta pregunta = new Pregunta();
boolean banderaPantalla = true;
boolean numero0 = false;
int contador = 2;
int contadorNumero = 0;
PImage Inicio, Saludos, Preguntas, Dias, Numeros;
TuioObject objectTUIO;

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
  ////////////////////////////////////////////////////////////////////77
    numeroUno =  new Gif(this, "Uno.gif" );
    numeroUno.play();
    numeroDos = new Gif(this, "Dos.gif");
    numeroDos.play();
    numero.setup();
}

//Dibujar la ventana
void draw(){
  //

  //if(contador == 6){
   //numerosChidos();
 // }
  if (contador == 6 && numero0 == true && contadorNumero == 1){
    numerosUno();
    
  }else if(contador == 6 && numero0 == true && contadorNumero == 2){
    numerosDos();
    
  }
  if(contador == 6 && numero0 == false){
        numero.pantallaNumero();
  }
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
    contador =1;
    
  }
  
  if(mouseX>=660 && mouseX<=850 && mouseY>=500 && mouseY<=570 && banderaPantalla == false){
    print("sobre el boton");
    Inicio(); 
    banderaPantalla = true;
    contador = 2;
  }
  
  if(mouseX>=35 && mouseX<=265 && mouseY>=365 && mouseY<=455 && banderaPantalla == true){
    print("sobre el boton");
    pregunta.pantallaPregunta();
    banderaPantalla = false;
    contador = 3;
  }
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=220 && mouseY<=310 && banderaPantalla == true){
    print("sobre el boton");
    dia.pantallaDia();
    banderaPantalla = false;
    contador = 5;
  } 
  
  if(mouseX>=630 && mouseX<=860 && mouseY>=350 && mouseY<=440 && banderaPantalla == true){
    print("sobre el boton");
    numero.pantallaNumero();
    banderaPantalla = false;
    contador = 6;
  } 

}

void numerosUno(){

    image(numeroUno, 200, 180, width = 400, height = 300);
    

 
}
void numerosDos(){

    image(numeroDos, 200, 180, width = 400, height = 300);
    

 
}

void addTuioObject(TuioObject objectTUIO){
  int idObjeto = objectTUIO.getSymbolID();
  println("Objeto con ID "+ idObjeto + " detectado en posición X "+objectTUIO.getX()+
  " y posición Y "+objectTUIO.getY());
}

void updateTuioObject (TuioObject objectTUIO){
  int idObjeto = objectTUIO.getSymbolID();
  if(idObjeto == 0){
    numero0 = true;
    contadorNumero = 1;
 
  }else if(idObjeto == 1){
    numero0 = true;
    contadorNumero = 2;
  }
}

void removeTuioObject(TuioObject objectTuio){
  println("Objeto fuera "+objectTuio.getSymbolID());
  int idObjeto = objectTuio.getSymbolID();
  if(idObjeto == 0){
    numero0 = false; 
    //dispose();
  }
  else if(idObjeto == 1){
    numero0 = false;
    
  }
}

void refresh(TuioTime frameTame){
  redraw();
  
}
