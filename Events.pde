/*
La fonction detecte le clique de l'utilisateur
et présise les coordonées de la case choisi 
*/
 void mouseClicked() {
   
   clickedX = (mouseY-200)/50;
   clickedY = (mouseX-200)/50;  
   clicked=true;
   redraw();
}