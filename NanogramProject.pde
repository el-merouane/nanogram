import java.util.Collections;
import java.util.HashSet;
/* 
Point d'entrer du programme 
*/
void setup() {
  
  size (700,700);
  f = createFont("Arial",16,true);
   
  resUserSolution();
  
  
  log("loading index file: "+indexFile);
  index = loadFile(indexFile);
  log("loading index file: "+solutionFile);
  solution =loadFile(solutionFile);
  
  converteSolutionFileToMatrix();
  
  noLoop();
}
  
void draw() {
  
 background (100,100,100);
 fill(0); 

 setFont();
 drawGrid();
 drawIndex();

 if(clicked){
   if(clickedX >=0 && clickedY >= 0){
     if( mouseEvent.getCount() == 1) {
      saveBox(clickedX, clickedY);
      checkSolution();

     }
     if( mouseEvent.getCount() == 2) {   
       deleteBox(clickedX, clickedY); 
       checkSolution();
     }
     if( mouseEvent.getCount() == 3) {   
       
     
     } 
   }  
    
 }
 drawBoxs();

}