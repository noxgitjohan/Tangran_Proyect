
int X, Y;
color selec;
// atributos cuadrado
float rotacionrec;
color rec = color(0, 0, 800); 
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
int Escala=1;
// atributos triangulo pequeño
float rotacionTp;
int moveTpX, moveTpY;
color trip = color(200, 500, 30);
// atributos triangulo pequeño 2
float rotacionTp2;
int moveTp2X, moveTp2Y;
color trip2 = color(100, 500, 0);
//escala 
float E=4;
color recuadro = color(0,0,0);
int pixel=0;
boolean locked = false;
//
int tipocursor=0;
//------------Canvas
int W=800;
int H=764;
int Stage =0;
//------------Stages
boolean win1= false;
boolean win2= false;
boolean win3= false;
//-----------
void setup() {

  size(900, 764);
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
  println(X,Y);
  locked = true; 
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

void mouseReleased() {
  locked = false;
}


void draw() {

  background(1000, 1000, 1000);
 
  if (X > 315-32 && X <315+168 && 
      Y> 33 && Y < 33+32) {
        tipocursor =tipocursor+1;X=0;Y=0;
        if(tipocursor==1){cursor(HAND); 
        }if(tipocursor==2){cursor(WAIT); 
        }if(tipocursor==3){cursor(CROSS); 
        }if(tipocursor==4){cursor(MOVE);
        }if(tipocursor==5){cursor(TEXT); 
        }if(tipocursor==6){cursor(ARROW);
        }if(tipocursor==7){tipocursor =1;
        }
      }
if (Stage == 0){//......................................................................................Inicio
fill(10, 120, 1000);textSize(32); text("Tangran", W/2-61, 65); //Titulo
fill(10, 120, 1000);rect(315,200,200,50,10);
fill(1000, 1000, 1000);textSize(14); text("Inicio", 325, 230);
if (X > 315 && X <315+200 && 
      Y> 200 && Y < 200+50) {
Stage = Stage +1;     
  }

fill(10, 120, 1000);rect(315,500,200,50,10);
fill(1000, 1000, 1000);textSize(14); text("Creditos", 325, 530);
if (X > 315 && X <315+200 && 
      Y> 500 && Y < 500+50) {
Stage = 100;     
  }


 
}//......................................................................................Inicio
if(Stage == 1){//......................................................................................Primer problema.


fill(10, 120, 1000);
  textSize(32); 
  text("Tangran", W/2-61, 65); //Titulo

//movimiento fichas_---------------------------
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
//----------------------------------Puntos de recuperacion.
fill(rec);
textSize(10); 
text("Rectangulo", 720,75); 
ellipse(700,65,20,20);
fill(tri1);textSize(10); text("Triangulo 1", 720,75+40); ellipse(700,65+40,20,20);
fill(tri2);textSize(10); text("Triangulo 2", 720,75+40*2); ellipse(700,65+40*2,20,20); 
fill(trim);textSize(10); text("Triangulo mediano", 720,75+40*3); ellipse(700,65+40*3,20,20);
fill(trip);textSize(10); text("Triangulo pequeño", 720,75+40*4); ellipse(700,65+40*4,20,20);
fill(trap);textSize(10); text("Trapecio", 720,75+40*5); ellipse(700,65+40*5,20,20);
fill(trip2);textSize(10); text("Triangulo pequeño 2", 720,75+40*6);ellipse(700,65+40*6,20,20);

//------------------------------Botones
fill(10,1,120);
textSize(10); text("Siguiente", 780,635);
 beginShape();
  vertex(720, 620);
  vertex(740, 620);
  vertex(740, 610);
  vertex(770, 630);
  vertex(740, 650);
  vertex(740, 640);
  vertex(720, 640);
  vertex(720, 620);
  endShape(CLOSE);
  
  if (X > 720 && X < 770 && 
      Y> 610 && Y < 650) {
     Stage = Stage +1;
   //------------------------------inicial variables
    moverecX=0;
    moverecY=0;
    moveT1Y=0;
    moveT1X=0;
    moveT2Y=0;
    moveT2X=0;
    moveTpY=0;
    moveTpX=0;
    moveTp2Y=0;
    moveTp2X=0;
    moveTmY=0;
    moveTmX=0;
    moveTrapY=0;
    moveTrapX=0;
    rotacionrec=0;
    rotacionT1=0;
    rotacionT2=0;
    rotacionTp=0;
    rotacionTp2=0;
    rotacionTm=0;
    rotacionTrap=0;
    Escala=1;
    X=0;
    Y=0;
   //------------------------------------
   }
  
fill(10,1,120);rect(87,610,60,40,7);
fill(1000,1000,1000);textSize(9); text("Complete?", 95,632);

fill(10,120,1000);rect(157,610,70,40,7);
fill(1000,1000,1000);  beginShape();
  vertex(162+20, 620);
  vertex(162+40+20, 620);
  vertex(162+40, 620+20);
  vertex(162, 620+20);
  vertex(162+20, 620);
  endShape(CLOSE);
  
  if (X > 157 && X < 157+70 && 
      Y> 610 && Y < 610 + 40) {
        if(Escala==1){
          Escala =-1;
           
        }else{
          Escala =+1;
          
        }
         X=0;
         Y=0;
      }
      
 fill(10,1,120); textSize(10); text("Volver", 5 ,633);
 beginShape();
  vertex(40, 630);
  vertex(60, 610);
  vertex(60, 620);
  vertex(80, 620);
  vertex(80, 640);
  vertex(60, 640);
  vertex(60, 650);
  vertex(40, 630);
  endShape(CLOSE);

 if (X > 40 && X < 80 && 
      Y> 620 && Y < 640) {
Stage = Stage - 1;     
X=0;
Y=0;
  }
  
//RECUADRO.----------------------------------------------- 
pushMatrix();
fill(recuadro);
rect(W/2-((70.71*E)/2),H/2-((70.71*E)/2),70.71*E,70.71*E);
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
  scale(1,Escala);
  fill(trap);
  beginShape();
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(50*E, 25*E);
   vertex(25*E, 25*E);
  endShape(CLOSE);
  popMatrix();

 
//-----------------------------Verificar Correcto
 if (X > 77 && X < 77+60 && 
      Y> 610 && Y < 610+40) {
  if(!locked) { 
loadPixels ();
for (int i = 0; i < (width*height); i++) {
  if (pixels[i] == color(0,0,0) ){
      pixel = pixel + 1;   
           
   }
  }
updatePixels ();
          
    } 
   if(!locked) { 
   print( pixel  , "------------------");
        if (pixel< 1000 ){
             print( "gano");
             win1 = true;
             } else{
       
          }
          pixel =0;
         X=0;
         Y=0;
       
}}
if (win1 == true){
   
    stroke(0,0,0);
    fill(20, 500, 100); textSize(60); text("COMPLETADO ✓", W/2-((70.71*E/2))-50 ,H/2);
   //fill(20, 500, 100); textSize(300); text("✓", W/2-80 ,H/2+10);
    noStroke();
}

}  //.............................................................................................Primer problema.

if(Stage == 2){//.............................................................................................Segundo problema.



fill(10, 120, 1000);
  textSize(32); 
  text("Tangran", W/2-61, 65); //Titulo

//movimiento fichas_---------------------------
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
//----------------------------------Puntos de recuperacion.
fill(rec);
textSize(10); 
text("Rectangulo", 720,75); 
ellipse(700,65,20,20);
fill(tri1);textSize(10); text("Triangulo 1", 720,75+40); ellipse(700,65+40,20,20);
fill(tri2);textSize(10); text("Triangulo 2", 720,75+40*2); ellipse(700,65+40*2,20,20); 
fill(trim);textSize(10); text("Triangulo mediano", 720,75+40*3); ellipse(700,65+40*3,20,20);
fill(trip);textSize(10); text("Triangulo pequeño", 720,75+40*4); ellipse(700,65+40*4,20,20);
fill(trap);textSize(10); text("Trapecio", 720,75+40*5); ellipse(700,65+40*5,20,20);
fill(trip2);textSize(10); text("Triangulo pequeño 2", 720,75+40*6);ellipse(700,65+40*6,20,20);

//------------------------------Botones
fill(10,1,120);
textSize(10); text("Siguiente", 780,635);
 beginShape();
  vertex(720, 620);
  vertex(740, 620);
  vertex(740, 610);
  vertex(770, 630);
  vertex(740, 650);
  vertex(740, 640);
  vertex(720, 640);
  vertex(720, 620);
  endShape(CLOSE);
  
  if (X > 720 && X < 770 && 
      Y> 610 && Y < 650) {
     Stage = Stage +1;
   //------------------------------inicial variables
    moverecX=0;
    moverecY=0;
    moveT1Y=0;
    moveT1X=0;
    moveT2Y=0;
    moveT2X=0;
    moveTpY=0;
    moveTpX=0;
    moveTp2Y=0;
    moveTp2X=0;
    moveTmY=0;
    moveTmX=0;
    moveTrapY=0;
    moveTrapX=0;
    rotacionrec=0;
    rotacionT1=0;
    rotacionT2=0;
    rotacionTp=0;
    rotacionTp2=0;
    rotacionTm=0;
    rotacionTrap=0;
    Escala=1;
    X=0;
    Y=0;
    
   //------------------------------------
   }
  
fill(10,1,120);rect(87,610,60,40,7);
fill(1000,1000,1000);textSize(9); text("Complete?", 95,632);

fill(10,120,1000);rect(157,610,70,40,7);
fill(1000,1000,1000);  beginShape();
  vertex(162+20, 620);
  vertex(162+40+20, 620);
  vertex(162+40, 620+20);
  vertex(162, 620+20);
  vertex(162+20, 620);
  endShape(CLOSE);
  
  if (X > 157 && X < 157+70 && 
      Y> 610 && Y < 610 + 40) {
        if(Escala==1){
          Escala =-1;
           
        }else{
          Escala =+1;
          
        }
         X=0;
         Y=0;
      }
      
 fill(10,1,120); textSize(10); text("Volver", 5 ,633);
 beginShape();
  vertex(40, 630);
  vertex(60, 610);
  vertex(60, 620);
  vertex(80, 620);
  vertex(80, 640);
  vertex(60, 640);
  vertex(60, 650);
  vertex(40, 630);
  endShape(CLOSE);

 if (X > 40 && X < 80 && 
      Y> 620 && Y < 640) {
Stage = Stage - 1;  
X=0;
Y=0;
  }
  
 
//RECUADRO.-----------------------------------------------
pushMatrix();
fill(recuadro);

 beginShape();
  vertex(240, 70);
  vertex(240+(18*E), 70+18*E);
  vertex(240+36*E, 70);
  vertex(240+36*E, 70+36*E);
  vertex(240+(18*E), 70+18*E+36*E);
  vertex(240, 70+36*E);
  endShape(CLOSE);
  beginShape();
  vertex(240+(18*E), 70+18*E+36*E);
  vertex(240+(18*E), 70+18*E+36*E+50*E );
  vertex(240+(18*E)+50*E, 70+18*E+36*E+100*E );
  vertex(240+(18*E)+50*E, 70+18*E+36*E+50*E);
  vertex(240+(18*E), 70+18*E+36*E);
  endShape(CLOSE);
  
beginShape();
   vertex(240+(18*E)+50*E, 70+18*E+36*E+100*E );
   vertex(25*E+(240+(18*E)+50*E), 70+18*E+36*E+100*E );
   vertex((240+(18*E)+50*E)+50*E,(70+18*E+36*E+100*E)-25*E);
   vertex(240+(18*E)+50*E+25*E,(70+18*E+36*E+100*E)-25*E);
   vertex(240+(18*E)+50*E, 70+18*E+36*E+100*E );
   vertex(240+(18*E)+50*E-25*E, 70+18*E+36*E+100*E-25*E );
   vertex(240+(18*E)+50*E-50*E, 70+18*E+36*E+100*E );
   vertex(240+(18*E)+50*E, 70+18*E+36*E+100*E );
  endShape(CLOSE);
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
  scale(1,Escala);
  fill(trap);
  beginShape();
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(50*E, 25*E);
   vertex(25*E, 25*E);
  endShape(CLOSE);
  popMatrix();

 
//-----------------------------Verificar Correcto
 if (X > 77 && X < 77+60 && 
      Y> 610 && Y < 610+40) {
  if(!locked) { 
loadPixels ();
for (int i = 0; i < (width*height); i++) {
  if (pixels[i] == color(0,0,0) ){
      pixel = pixel + 1;   
           
   }
  }
updatePixels ();
          
    } 
   if(!locked) { 
   print( pixel  , "------------------");
        if (pixel< 1000 ){
             print( "gano");
             win2 = true;
             } else{
       
          }
          pixel =0;
         X=0;
         Y=0;
       
}}
if (win2 == true){
   
    stroke(0,0,0);
    fill(20, 500, 100); textSize(60); text("COMPLETADO ✓", W/2-((70.71*E/2))-50 ,H/2);
   //fill(20, 500, 100); textSize(300); text("✓", W/2-80 ,H/2+10);
    noStroke();
}

}//.............................................................................................Segundo problema.


if(Stage == 3){//.............................................................................................Tercer problema.



fill(10, 120, 1000);
  textSize(32); 
  text("Tangran", W/2-61, 65); //Titulo

//movimiento fichas_---------------------------
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
//----------------------------------Puntos de recuperacion.
fill(rec);
textSize(10); 
text("Rectangulo", 720,75); 
ellipse(700,65,20,20);
fill(tri1);textSize(10); text("Triangulo 1", 720,75+40); ellipse(700,65+40,20,20);
fill(tri2);textSize(10); text("Triangulo 2", 720,75+40*2); ellipse(700,65+40*2,20,20); 
fill(trim);textSize(10); text("Triangulo mediano", 720,75+40*3); ellipse(700,65+40*3,20,20);
fill(trip);textSize(10); text("Triangulo pequeño", 720,75+40*4); ellipse(700,65+40*4,20,20);
fill(trap);textSize(10); text("Trapecio", 720,75+40*5); ellipse(700,65+40*5,20,20);
fill(trip2);textSize(10); text("Triangulo pequeño 2", 720,75+40*6);ellipse(700,65+40*6,20,20);

//------------------------------Botones
fill(10,1,120);
textSize(10); text("Siguiente", 780,635);
 beginShape();
  vertex(720, 620);
  vertex(740, 620);
  vertex(740, 610);
  vertex(770, 630);
  vertex(740, 650);
  vertex(740, 640);
  vertex(720, 640);
  vertex(720, 620);
  endShape(CLOSE);
  
  if (X > 720 && X < 770 && 
      Y> 610 && Y < 650) {
     Stage = Stage +1;
   //------------------------------inicial variables
    moverecX=0;
    moverecY=0;
    moveT1Y=0;
    moveT1X=0;
    moveT2Y=0;
    moveT2X=0;
    moveTpY=0;
    moveTpX=0;
    moveTp2Y=0;
    moveTp2X=0;
    moveTmY=0;
    moveTmX=0;
    moveTrapY=0;
    moveTrapX=0;
    rotacionrec=0;
    rotacionT1=0;
    rotacionT2=0;
    rotacionTp=0;
    rotacionTp2=0;
    rotacionTm=0;
    rotacionTrap=0;
    Escala=1;
    X=0;
    Y=0;
    
   //------------------------------------
   }
  
fill(10,1,120);rect(87,610,60,40,7);
fill(1000,1000,1000);textSize(9); text("Complete?", 95,632);

fill(10,120,1000);rect(157,610,70,40,7);
fill(1000,1000,1000);  beginShape();
  vertex(162+20, 620);
  vertex(162+40+20, 620);
  vertex(162+40, 620+20);
  vertex(162, 620+20);
  vertex(162+20, 620);
  endShape(CLOSE);
  
  if (X > 157 && X < 157+70 && 
      Y> 610 && Y < 610 + 40) {
        if(Escala==1){
          Escala =-1;
           
        }else{
          Escala =+1;
          
        }
         X=0;
         Y=0;
      }
      
 fill(10,1,120); textSize(10); text("Volver", 5 ,633);
 beginShape();
  vertex(40, 630);
  vertex(60, 610);
  vertex(60, 620);
  vertex(80, 620);
  vertex(80, 640);
  vertex(60, 640);
  vertex(60, 650);
  vertex(40, 630);
  endShape(CLOSE);

 if (X > 40 && X < 80 && 
      Y> 620 && Y < 640) {
Stage = Stage - 1;  
X=0;
Y=0;
  }
  
 
//RECUADRO.-----------------------------------------------
pushMatrix();
fill(recuadro);

 beginShape();
  vertex(360,120);
  vertex(360+50*E, 120+50*E);
  vertex(360+50*E+25*E, 120+50*E);
  vertex(360+25*E, 120+100*E);
  vertex(360+25*E, 120+100*E+25*E);
  vertex(360-25*E, 120+25*E+50*E);
  vertex(360-25*E-25*E, 120+25*E+50*E);
  vertex(360, 120+25*E);
  vertex(360, 120);
  endShape(CLOSE);
  fill(1000,1000,1000);
  beginShape();
  vertex(360, 120+50*E);
  vertex(360+25*E, 120+50*E);
  vertex(360+25*E, 120+50*E+25*E );
  vertex(360, 120+50*E+25*E);
    endShape(CLOSE);
  
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
  scale(1,Escala);
  fill(trap);
  beginShape();
  vertex(0, 0);
  vertex(25*E, 0);
  vertex(50*E, 25*E);
   vertex(25*E, 25*E);
  endShape(CLOSE);
  popMatrix();

 
//-----------------------------Verificar Correcto
 if (X > 77 && X < 77+60 && 
      Y> 610 && Y < 610+40) {
  if(!locked) { 
loadPixels ();
for (int i = 0; i < (width*height); i++) {
  if (pixels[i] == color(0,0,0) ){
      pixel = pixel + 1;   
           
   }
  }
updatePixels ();
          
    } 
   if(!locked) { 
   print( pixel  , "------------------");
        if (pixel< 1500 ){
             print( "gano");
             win3 = true;
             } else{
       
          }
          pixel =0;
         X=0;
         Y=0;
       
}}
if (win3 == true){
   
    stroke(0,0,0);
    fill(20, 500, 100); textSize(60); text("COMPLETADO ✓", W/2-((70.71*E/2))-50 ,H/2);
   //fill(20, 500, 100); textSize(300); text("✓", W/2-80 ,H/2+10);
    noStroke();
}



}//.............................................................................................tercer problema.


if(Stage == 4){//.............................................................................................Cuarto problema.

fill(10, 120, 1000);
  textSize(32); 
  text("Tangran", W/2-61, 65); //Titulo
  
  fill(0, 0, 0);textSize(14); text("Estamos trabajando en mas.......", 310,500);
  

fill(10,1,120); textSize(10); text("Volver", 5 ,633);
 beginShape();
  vertex(40, 630);
  vertex(60, 610);
  vertex(60, 620);
  vertex(80, 620);
  vertex(80, 640);
  vertex(60, 640);
  vertex(60, 650);
  vertex(40, 630);
  endShape(CLOSE);

 if (X > 40 && X < 80 && 
      Y> 620 && Y < 640) {
Stage =Stage -1;     
X=0;
Y=0;
  }

  }//.............................................................................................Cuarto problema.
  
  
  
if (Stage == 100){//......................................................................................Creditos
 
fill(10, 120, 1000);textSize(32); text("Tangran", W/2-61, 65); //Titulo
fill(10, 120, 1000);rect(280,200,300,50,10);
fill(1000, 1000, 1000);textSize(14); text("Johan Elias Quiroga Quintero", 300, 230);
fill(0, 0, 0);textSize(14); text("Universidad Nacional de Colombia", 310, 500);
fill(0, 0, 0);textSize(14); text("Sede Bogota", 384, 514);
fill(0, 0, 0);textSize(14); text("2017", 406, 530);

fill(10,1,120); textSize(10); text("Volver", 5 ,633);
 beginShape();
  vertex(40, 630);
  vertex(60, 610);
  vertex(60, 620);
  vertex(80, 620);
  vertex(80, 640);
  vertex(60, 640);
  vertex(60, 650);
  vertex(40, 630);
  endShape(CLOSE);

 if (X > 40 && X < 80 && 
      Y> 620 && Y < 640) {
Stage =0;     
  }


}//......................................................................................Creditos



  //---------------


 }