
/*
La focntion loadFile charge un fichier
dans un tableau de chaine de caractère

@param: fileName
@return: tableau de chaine de caractère
*/

public String[] loadFile(String fileName) {
  
  String index[] = loadStrings(fileName);
  
  return index;
}

/*
La fonction resUserSolution initialise 
la solution de l'utilisateur
*/
public void resUserSolution() {
  
  for(int i=0; i<10;i++){
    for(int j=0;j<10;j++){
      userSolution[i][j] = "0";
    }
  }
}
/*
La fonction log permet de logger un message sur la console
@param: msg chaine de caractère
*/
public void log(String msg) {
  System.out.println(msg);
}

/*
La fonction  drawFrid dessine l'interface du nanogram
*/
public void drawGrid() {
  
  float distanceBetweenHorizontalLines = 50;
  float distanceBetweenVerticalLines = 50;

  for(int i = 0; i < nbOfHorizontalLines; i++)
  {
    line(0,margin+(distanceBetweenHorizontalLines*i), width, margin+(distanceBetweenHorizontalLines*i));
  }
  
 for(int i = 0; i < nbOfVerticalLines; i++)
  {
    line (margin+(distanceBetweenVerticalLines*i),0,margin+(distanceBetweenVerticalLines*i), height);
  }
  
}

/*
La fonction drawHorizontalIndex dessine les indexs horizontals
*/
public void drawHorizontalIndex() {
 
  int indexSpacer = 0;
  int c=0; 
  for(int i=16;i<26;i++) {
    String in = index[i];
    for(int j=0; j<in.length();j++){
      text(in.charAt((in.length()-j-1)), 216+c, 178-indexSpacer);
      indexSpacer=indexSpacer+12;
    }
    indexSpacer=0;
    c=c+50;
  }
}

/*
La fonction drawVerticalIndex dessine les indexs verticals
*/
public void drawVerticalIndex() {
  
  int indexSpacer = 0;
  int c=0; 
  for(int i=5;i<15;i++) {
    String in = index[i];
    for(int j=0; j<in.length();j++){
      text(in.charAt(j), 166-indexSpacer , 230+c);
      indexSpacer=indexSpacer+12;
    }
    indexSpacer=0;
    c=c+50;
  }
}

/*
La fonction drawIndex dessine les index horizontal et vertical
*/
public void drawIndex() {
  drawHorizontalIndex();
  drawVerticalIndex();
}

/*
La fonction applique le font f
*/
public void setFont() {
  textFont(f,16); 
}

/*
la fonction checkSolution 
dessine le message de félicitation
si la solution est correcte
*/
public void checkSolution() {
  
  boolean  isWinner = true;
  for(int i=0;i<10; i++){
     for(int j=0;j<10;j++){
       if(!solutionMatrix[i][j].equals(userSolution[i][j])){
         isWinner =  false;
       }
     }
  }
  if(isWinner){
  fill(255,0,0);
  textSize(30);
  text("Félicitation :)", 20, 100);
  fill(0);
  drawDate();
  }
  
}

/*
la fonction drawDate dessine la temps
écoulé depuis le lancement du jeu
jusqu'a la fin du jeu
*/
public void drawDate() {

 int m = millis();
 int sd = m/1000;
 int mn = sd/60;
 
 text(mn+" : "+sd, 10, 30);
}

/*
La fonction drawBoxs
dessine les cases cochées par l'utilisateur
*/
public void drawBoxs(){
   for(int i=0;i< 10; i++){       
         for(int j=0;j< 10; j++){
           if(userSolution[i][j].equals("1")){
             rect((j*50)+200, (i*50)+200, 50, 50);
           }
           
         } 
    }
}

/*
la fonction converteSolutionFileToMatrix
convertie la fichier de la solution 
a un tableau de deux dimentions pour faciliter
de vérifier les résultatsa
*/
public void converteSolutionFileToMatrix() {
  for(int i=0;i<10;i++){
    int k=0;
    for(int j=0;j<10;j++) {
      solutionMatrix[i][j] = ""+solution[i].charAt(k);
      k=k+2;
    }
  }
}

/*
La fonction saveBox enregitre 
la case cochée par l'utilisateur
*/
public void saveBox(int x, int y) {
  userSolution[x][y] = "1";
}

/*
La fonction saveBox supprime 
la case cochée par l'utilisateur
*/
public void deleteBox(int x, int y) {
  userSolution[x][y] = "0";
}