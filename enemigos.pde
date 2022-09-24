
class npc{
 float x,y,xl,yl,v;
 PImage personaje; 
 
 npc(float X,float Y,float vl,PImage img){
   x= X;
   y = Y;
   v = vl;
   personaje = img;
   xl = img.width;yl = img.height;   
 }
 
 void control(){
  
  image(personaje,x,y); 
   //bloqueos de movimiento
   int energia2 = (int)energia;
   fill(#F5D902);textSize(10);textAlign(LEFT);text(""+energia2,10,20);
  fill(#F5D902);rect(35,10,barrae,10);
  
   if(cjuego == 0){
  if(y+100 < 390 && banderaypj == 0 ){
    y = y+1;
  }
  if(x <= 0){x = 0;}
  if(x >= 700-50 ){ x = 700-50;}
  if(y <= 0){y = 0;}
  //movimiento lateral
  if(a){x -= v;}
  if(d){x += v;}
  
  //movimiento vertical
  
  if(w){y -= v; energia -= 1;}
  if(benergia == 0){energia += 0.2;}
  if(energia >= 100){energia = 100;}
  if(energia <= 0){energia = 0; w=false; brefresh = 0;}
  if(y+100 == 390){brefresh = 1;}
  
  barrae = energia2;
 }
 }
 void update (){
   
   image(personaje,x,y);
   if(cjuego == 0){
    x -= v;   
    if(x<0){
      x = random(width,2*width);
      y = random(150,300);
    }
 }
 }
 void update2(){
   
   image(personaje,x,y);
   if(cjuego == 0){
    x -= v;   
    if(x<0 - xl){
      x = random(width,2*width);
    }
 }
 }
  boolean colide(npc ply){
    if(x + xl > ply.x && x < ply.x + ply.xl){
      if(y + yl > ply.y && y < ply.y + ply.yl){
        return true;
    
      }    
    }   
   return false;
 }
}
 

