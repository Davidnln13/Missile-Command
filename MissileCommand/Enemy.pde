class Enemy
{
  PVector pos;
  int expandX, expandY;
  boolean active;
 
  Enemy( )
  {
    pos = new PVector(random(0, width), random(0, height));
    expandX = 0;
    expandY = 0;
    
   
  }
  
  void update(int num)
  {
      if(num >= 10)
      {
        active = true;
      }
      if(active == true)
      {
        expandX++;
        expandY++;
        if(expandX >= 100 && expandY >= 100)
        {
          active = false;
        }
      }
  
      else if(active == false)
      {
        expandX = 0;
        expandY = 0;
        pos = new PVector(random(0, width), random(0, height));
       
      }
  }
  
  void display(PVector tPos)
  {
   if(active == true)
   {
     noStroke();
     fill(255,0,0);
     ellipse(tPos.x, tPos.y, expandX, expandY);
   }
   else
   {
       
   }
   
  }
  
}