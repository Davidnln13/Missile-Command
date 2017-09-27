class Explosion
{

  int expandX, expandY;
  boolean active, fired;
 
  Explosion()
  {
    
    expandX = 0;
    expandY = 0;
    fired = false;
   
  }
  
  void update(int num)
  {
      if(num >= 10 && fired == false)
      {
        active = true;
      }
      if(active == true)
      {
        fired = true;
        expandX++;
        expandY++;
        if(expandX >= 100 && expandY >= 100)
        {
          active = false;
        }
      }
  
      if(active == false)
      {
        expandX = 0;
        expandY = 0;
          
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
   else if (active == false && fired == true)
   {   
       clear();
       background(255);
       ellipse(tPos.x, tPos.y, expandX, expandY); //<>//
     
   }
   
  }
  
}