
/*Variables globales*/

String indexFile = "ours.nono";
String solutionFile = "ours.soluce";

String index[] = null;
String solution[] = null;

String userSolution[][] = new String[10][10];
String solutionMatrix[][] = new String[10][10];

int nbOfHorizontalLines = 10;
int nbOfVerticalLines = 10;

int margin = 200;

int start;

PFont f;

int  clickedX;
int clickedY;

boolean clicked = false;

ArrayList<Integer> blackRect = new ArrayList<Integer>();