class Enemy
{
  PVector pos;
  int expandX, expandY;
  boolean active;
  
  Enemy()
  {
    pos = new PVector(random(0, width), random(0, height));
    expandX = 0;
    expandY = 0;
    active = true;
  }
  
  void update()
  {
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
        active = true;
      }
  }
  
  void display()
  {
   if(active == true)
   {
     fill(255, 0, 0);
     ellipse(pos.x, pos.y, expandX, expandY);
   }
  }
  
}