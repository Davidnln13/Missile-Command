//
// C00204076
// Brandon Seah-Dempsey
// Started at 11:32 22 September 2017
// Finished at
// Time taken:
// Known bugs:

//
class Player
{
  PVector startingPos = new PVector(800/2,600);
  PVector targetPos = new PVector(0,0), targetVel = new PVector(1,1);
  PVector currentPos = new PVector(800/2,600);
  boolean clicked = false;
  PVector lerpTarget = new PVector(0,0);
  int num1 = 0;
  int num2 = 0;
  //
  Player()
  {
  }
  
  //
  void update()
  {
    
  }
  
  //
void display()
  {
    if(clicked == true)
    {
        
        stroke(0,0,255);
        strokeWeight(5);
         
        /*lerpTarget.x = lerp(startingPos.x, targetPos.x, num1/10.0);
        lerpTarget.y = lerp(startingPos.y, targetPos.y, num2/10.0);
        point(lerpTarget.x,lerpTarget.y);*/
        
        line(startingPos.x, startingPos.y, currentPos.x, currentPos.y);
        
         
         
         if(currentPos.x < targetPos.x)
         {
           currentPos.x += targetVel.x;
         }
         else
         {
            currentPos.x = targetPos.x;
         }
         
         if(currentPos.y > targetPos.y)
         {
           currentPos.y -= targetVel.y;
         }
         else
         {
           currentPos.y = targetPos.y;
         }
        
        if(num1 <10)
        {
          num1++;
          num2++;
        }
   
         
        
        
    }
}
  
  //
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
  lerpTarget = new PVector(0,0);
  num1 = 0;
  num2 = 0;
}

int getNumOne()
{
   return num1; 
}
PVector getTargetPosition()
{
   return targetPos; 
}
}