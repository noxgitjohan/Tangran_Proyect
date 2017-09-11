
int X, Y;
color selec;
// atributos cuadrado
float rotacionrec;
color rec = color(0, 0, 0); 
int moverecX=20, moverecY=30;
// atributos triangulo 1
float rotacionT1;
int moveT1X, moveT1Y;
color tri1 = color(200, 200, 0);
// atributos triangulo 2
float rotacionT2;
int moveT2X, moveT2Y;
color tri2 = color(200, 200, 1000);
// atributos triangulo medio
float rotacionTm;
int moveTmX, moveTmY;
color trim = color(2000, 0, 0);
// atributos trapecio
float rotacionTrap;
int moveTrapX, moveTrapY;
color trap = color(100, 500, 150);
// atributos triangulo pequeño
float rotacionTp;
int moveTpX, moveTpY;
color trip = color(200, 500, 30);
// atributos triangulo pequeño 2
float rotacionTp2;
int moveTp2X, moveTp2Y;
color trip2 = color(299, 500, 30);
//escala 
float E=5;



//------------

//------------

void setup() {

  size(600, 700);
  background(1000, 1000, 1000);
  noStroke();
  cursor(HAND);
 
}


//------------------------------------------------


void mouseDragged() { 
  X = mouseX;
  Y = mouseY;
}

void mousePressed() {
  selec = get(mouseX, mouseY);
  X = mouseX;
  Y = mouseY;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  
   
  if (selec == rec) {
      rotacionrec = (rotacionrec + e*PI/4.0);
      println(e);
     
  }
  if (selec == tri1) {
      rotacionT1 = (rotacionT1 + e*PI/4.0);
  }
  if (selec == tri2) {
      rotacionT2 = (rotacionT2 + e*PI/4.0);
  }  
  if (selec == trip) {
      rotacionTp = (rotacionTp + e*PI/4.0);
  }
  if (selec == trip2) {
      rotacionTp2 = (rotacionTp2 + e*PI/4.0);
  }
  if (selec == trim) {
      rotacionTm = (rotacionTm + e*PI/4.0);
  }
  if (selec == trap) {
      rotacionTrap = (rotacionTrap + e*PI/4.0);
  }
  
  
}

void draw() {

  background(1000, 1000, 1000);
  
  fill(0, 0, 1000);
  textSize(32); 
  text("Tangran", 250, 50); //Titulo

  if (selec == rec) {
    moverecX=X;
    moverecY=Y;
  }
  if (selec == tri1) {
    moveT1Y=Y;
    moveT1X=X;
  }
  if (selec == tri2) {
    moveT2Y=Y;
    moveT2X=X;
  }
   if (selec == trip) {
    moveTpY=Y;
    moveTpX=X;
  }  
   if (selec == trip2) {
    moveTp2Y=Y;
    moveTp2X=X;
  }  
  if (selec == trim) {
    moveTmY=Y;
    moveTmX=X;
  }
   if (selec == trap) {
    moveTrapY=Y;
    moveTrapX=X;
  }
  
  
//RECUADRO.
pushMatrix();
fill(2,100,50);
rect(300-(70.71*E)/2, 200,70.71*E,70.71*E);
rotate(PI/2);
popMatrix();
  
 
  //Cuadrado
  pushMatrix();
  translate(moverecX, moverecY);
  rotate(rotacionrec);
  fill(rec);
  rect(0, 0,25*E, 25*E);
  
  popMatrix();

//Triangulo 1
  pushMatrix();
  translate(moveT1X, moveT1Y);
  rotate(rotacionT1);
  fill(tri1);
  beginShape(TRIANGLES);
  vertex(0, 0);
  vertex(50*E, 50*E);
  vertex(0, 50*E);
  endShape(CLOSE);
  popMatrix();

//Triangulo 2
  pushMatrix();
  translate(moveT2X, moveT2Y);
  rotate(rotacionT2);
  fill(tri2);
  beginShape(TRIANGLES);
  vertex(0, 0);
  vertex(50*E,50*E);
  vertex(0,50*E);
  endShape(CLOSE);
  popMatrix();

//Triangulo pequeño
  pushMatrix();
  translate(moveTpX, moveTpY);
  rotate(rotacionTp);
  fill(trip);
  beginShape(TRIANGLES);
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(0, 25*E);
  endShape(CLOSE);
  popMatrix();

//Triangulo pequeño 2
  pushMatrix();
  translate(moveTp2X, moveTp2Y);
  rotate(rotacionTp2);
  fill(trip2);
  beginShape(TRIANGLES);
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(0, 25*E);
  endShape(CLOSE);
  popMatrix();
  
//Triangulo medio
  pushMatrix();
  translate(moveTmX, moveTmY);
  rotate(rotacionTm);
  fill(trim);
  beginShape(TRIANGLES);
  vertex(0, 0);
  vertex(50*E, 0);
  vertex(25*E, 25*E);
  endShape(CLOSE);
  popMatrix();

//Trapecio
  pushMatrix();
  translate(moveTrapX, moveTrapY);
  rotate(rotacionTrap);
  fill(trap);
  beginShape();
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(50*E, 25*E);
   vertex(25*E, 25*E);
  endShape(CLOSE);
  popMatrix();



  //----------------




  //---------------


} 