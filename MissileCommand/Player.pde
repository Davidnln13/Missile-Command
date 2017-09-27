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
  PVector targetPos = new PVector(0,0);
  boolean clicked = false;
  PVector lerpTarget = new PVector(0,0);
  float num1 = 0;
  float num2 = 0;
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
         
        lerpTarget.x = lerp(startingPos.x, targetPos.x, num1/10.0);
        lerpTarget.y = lerp(startingPos.y, targetPos.y, num2/10.0);
        point(lerpTarget.x,lerpTarget.y);
        if(num1 <10)
        {
          
        num1++;
        num2++;
        }
        delay(500);
         
        
        
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
  
}