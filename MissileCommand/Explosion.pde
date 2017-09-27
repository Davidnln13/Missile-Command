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

class Explosion
{

  int diameter;
  boolean alive, fired, explosionCleared, drawnAlready;
 
  Explosion()
  {
    diameter = 0;
    //if the bullet is fired
    fired = false;
    //if the explosion is on the screen
    alive = false;
    drawnAlready = false;
   
  }
  
  void update(int hit)
  {
      //if we "fired" the explosion its alive
      if(hit == 10 && alive == false)
      {
        fired = true;
      }
      if(fired == true)
      {
        alive = true;
      }
      //if its alive weve already fired it and it should start increasing the diameter
      //when it reaches max size it dies
      if(alive == true)
      {
        fired = false;
        diameter++;
        if(diameter >= 100 )
        {
          alive = false;
        }
      }
  
  }
  
  void display(PVector tPos)
  {
   if(alive == true)
   {
     noStroke();
     fill(255,0,0);
     //draw explosion at the target
     ellipse(tPos.x, tPos.y, diameter, diameter);
     drawnAlready = true;
     
   }
   else if (alive == false && fired == false && drawnAlready == true)
   {   //when the missile dies clear screen
       clear();
       background(255);
       explosionCleared = true;
       //<>//
   }
   
  }
  boolean getExplosionCleared()
  {
    return explosionCleared;
  }
  
}