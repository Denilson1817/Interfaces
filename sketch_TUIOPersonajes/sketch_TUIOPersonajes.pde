import TUIO.*;
//Declaracion de variables
TuioProcessing tuio;
PImage Inicio, Saludos, Preguntas, Dias, Numeros;
//buscar como usar varias clases desde aquí
//Configurar la ventan
void setup(){
  size(900,600);
  //Crear un objeto TUIO
  tuio = new TuioProcessing(this);
  Inicio=loadImage("Inicio.png");
  Saludos=loadImage("Saludos.png");
  Preguntas=loadImage("Preguntas.png");
  Dias=loadImage("Dias.png");
  Numeros=loadImage("Numeros.png");
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

//Metodo Saludo
void Saludo(){
  image(Saludos,0,0);
}

//Metodo Pregunta
void Pregunta(){
image(Preguntas,0,0); 
}

//Metodo Dia
void Dia(){
image(Dias,0,0);
}

//Metodo Numeros
void Numero(){
image(Numeros,0,0);
}

//Saber donde doy click
void mousePressed(){
println("click en x=" + mouseX + ", y=" + mouseY );

if(mouseX>=30 && mouseX<=260 && mouseY>=230 && mouseY<=300){
print("sobre el boton");
Saludo(); 
}

if(mouseX>=660 && mouseX<=850 && mouseY>=500 && mouseY<=570){
print("sobre el boton");
Inicio(); 
}

if(mouseX>=35 && mouseX<=265 && mouseY>=365 && mouseY<=455){
print("sobre el boton");
Pregunta();
}

if(mouseX>=630 && mouseX<=860 && mouseY>=220 && mouseY<=310){
print("sobre el boton");
Dia();
} 

if(mouseX>=630 && mouseX<=860 && mouseY>=350 && mouseY<=440){
print("sobre el boton");
Numero();
} 

}
