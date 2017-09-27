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
int numOfExplosion = 1;

Explosion[] playerE = new Explosion[numOfExplosion];

PVector sendPos = new PVector();

int sendNum = 0;


void setup()
{
  size(800, 600);
  background(255);
  smooth();
  sendPos = p.getTargetPosition();
  sendNum = p.getNumOne();
  for(int i = 0; i < numOfExplosion; i++)
  {
    playerE[i] = new Explosion();
  }
}

void draw()
{
 
  p.display();  //<>//
  
  
  for(int i = 0; i < numOfExplosion; i++)
  {
    playerE[i].update(p.getNumOne());
    playerE[i].display(p.getTargetPosition());
  }
}
   

void mouseClicked()
{
  p.playerMouseClicked();
}