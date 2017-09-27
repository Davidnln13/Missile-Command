// C00204958
// David Nolan
// C00204076
// Brandon Seah-Dempsey
// Started at 11:32 22 September 2017
// Finished at
// Time taken:
// Known bugs:

//
class Player
{
  //starting position of the missile
  PVector startingPos = new PVector(800/2,600);
  //current position of the missile
  PVector currentPos = new PVector(800/2, 600);
  //where the missile needs to hit
  PVector targetPos = new PVector(0,0);
  //velocity of the missile
  PVector missileVel = new PVector(1,1);
  PVector distanceBetween = new PVector(0,0);
  boolean clicked = false;
  int hit = 0;
  //
  Player()
  {
  }

void display(boolean cleared)
  {
        //<>//
    if(clicked == true)
    {
        //blue missile
        stroke(0,0,255);
        strokeWeight(5);
        //missile line 
        
        if(cleared == false)
        {
         
          line(startingPos.x, startingPos.y, currentPos.x, currentPos.y);
        }
     
        
         if(currentPos.x < targetPos.x)
         {
           distanceBetween.x = targetPos.x - currentPos.x;
           missileVel.x = distanceBetween.x/10;
           if(currentPos.x != targetPos.x)
           {
             currentPos.x += missileVel.x;
           }
           
             
         }
         else if (currentPos.x > targetPos.x)
         {
           distanceBetween.x = currentPos.x - targetPos.x;
           missileVel.x = distanceBetween.x/10;
           if(currentPos.x != targetPos.x)
           {
             currentPos.x -= missileVel.x;
           }
         }
         
         if(currentPos.y > targetPos.y)
         {
            distanceBetween.y = currentPos.y - targetPos.y;
         }
         
         missileVel.y = distanceBetween.y/10;
        
         if(currentPos.y != targetPos.y)
         {
           currentPos.y -= missileVel.y;
            
         }
                 
         hit++;
     
    }
}
  
  
  void playerMouseClicked()
  {
    if(clicked == false)
    {
      
      targetPos = new PVector(mouseX, mouseY);
      clicked = true;
    }  
  }
void reset()
{
  startingPos = new PVector(800/2,600);
  targetPos = new PVector(0,0);
  clicked = false;
}

PVector getTargetPosition()
{
   return targetPos; 
}
int getHit()
{
  return hit;
}
 
  
}