// C00204958
// David Nolan
// C00204076
// Brandon Seah-Dempsey
// Started at 11:26 22 September 2017
// Finished at
// Time taken:
// Known bugs:
// Programmers: Brandon Seah-Dempsey & David Nolan
// Project: Missile Command


Player p = new Player();
int numOfExplosion = 1;
Explosion[] playerExplosion = new Explosion[numOfExplosion];




void setup()
{
  size(800, 600);
  background(255);
  smooth();
  for(int i = 0; i < numOfExplosion; i++)
  {
    playerExplosion[i] = new Explosion();
  }
}

void draw()
{
  //draws the player/line
    //<>//
 
  for(int i = 0; i < numOfExplosion; i++)
  {
    //updates and draws the explosions
    p.display(playerExplosion[i].getExplosionCleared()); 
    playerExplosion[i].update(p.getHit());
    playerExplosion[i].display(p.getTargetPosition());
    
  }
}
   

void mouseClicked()
{
  p.playerMouseClicked();
}