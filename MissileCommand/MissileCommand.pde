//
// C00204076
// Brandon Seah-Dempsey
// Started at 11:26 22 September 2017
// Finished at
// Time taken:
// Known bugs:
// Programmers: Brandon Seah-Dempsey & David Nolan
// Project: Missile Command
Player p = new Player();
int expandX = 0, expandY = 0, reset = 0;
boolean active = true;
int lineFullyDrawn;
int numOfEnemies = 1;
Enemy[] enemy = new Enemy[numOfEnemies];
PVector sendPos = new PVector();
int sendNum = 0;
void setup()
{
  size(800, 600);
  background(255);
  smooth();
  sendPos = p.getTargetPosition();
  sendNum = p.getNumOne();
  for(int i = 0; i < numOfEnemies; i++)
  {
    enemy[i] = new Enemy();
  }
}

void draw()
{

  p.display(); 
  
  
  for(int i = 0; i < numOfEnemies; i++)
  {
    enemy[i].update(p.getNumOne());
    enemy[i].display(p.getTargetPosition());
  }
}
   

void mouseClicked()
{
  p.playerMouseClicked();
}