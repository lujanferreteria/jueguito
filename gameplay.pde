
void gameplay(){

  background(125);
  
  //piso
  image(piso,xpiso,350);
  image(piso,xpiso+piso.width,350);
  if(cjuego == 0){
  xpiso = xpiso -1;
  if(xpiso <= -piso.width){
  xpiso = 0;
  }
  }
  //jugador 
  banderaypj = 0;
  image(vida,10,50);
  
  //npc
  ply.control();
  //enemigos
  for(int i = 0; i<enemy1.length;i++){
    enemy1[i].update();
  if(enemy1[i].colide(ply)){
     
      cvida = cvida - 1;
    }
  }
  for(int i2 = 0; i2<laser.length;i2++){
    laser[i2].update2();
  if(laser[i2].colide(ply)){
     
      cvida = cvida - 1;
    }
  }
  if(cjuego == 0){
   fill(255);textAlign(CENTER);text("puntuación:"+score,width/2,10); 
   score += 1;
  }
  
  if(cjuego == 1){
    image(tela,0,0);
    textSize(40);fill(255);textAlign(CENTER);text("GAME OVER",width/2,height/2);
    textSize(20);fill(255);textAlign(CENTER);text("Puntuación final:"+score,width/2,20); 
    textSize(20);fill(255);textAlign(CENTER);text("Presiona enter para cerrar el juego",width/2,300); 
  }
 if(cjuego == 1){
 if(keyCode == ENTER){exit();} 
 }
 
  
  //vida
  if(cvida == 3){vida = loadImage("vida completa.png"); vida.resize(vida.width*2,vida.height*2);}
  if(cvida == 2){cjuego = 0 ;vida = loadImage("vida mitad.png"); vida.resize(vida.width*2,vida.height*2);}
  if(cvida == 1){cjuego = 1; vida = loadImage("vida perdida.png"); vida.resize(vida.width*2,vida.height*2);}
  
  
}
void keyPressed(){
  if(key == 'a' || key == 'A'){a=true;}
   if(brefresh == 1){if(energia >= 1){if(key == 'w' || key == 'W'){w=true; banderaypj = 1; benergia = 1;}}}
   if(key == 'd' || key == 'D'){d=true;} 
}

void keyReleased(){
  if(key == 'a' || key == 'A'){a=false;}
   if(key == 'w' || key == 'W'){w=false; benergia = 0;} 
   if(key == 'd' || key == 'D'){d=false;}  
}

