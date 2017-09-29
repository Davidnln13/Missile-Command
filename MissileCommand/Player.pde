

class Player
{
    //missile
    PVector startingPos = new PVector(800/2,600);
    PVector playerPos = new PVector(800/2,600);//starts bottom middle of screen
    PVector targetPos = new PVector(0,0); //where i need to hit
    boolean mouseClicked = false;
    PVector distanceBetween = new PVector(0,0);
    PVector missileVel = new PVector(0,0);
    
    //explosion
    int diameter = 0;
    int incrementingPos = 0;
    
    Player()
    {
        
    }
    
    void display()
    {
        if(mouseClicked == true)
        {
           stroke(0,0,255);
           strokeWeight(5);
           line(startingPos.x, startingPos.y, playerPos.x, playerPos.y);
           moveTowardTarget();
           drawExplosion();
           
        }
    }
    void drawExplosion()
    {
      
        if(incrementingPos >=10)
           {
      
             diameter++;
             noStroke();
             fill(255,0,0);
             ellipse(playerPos.x, playerPos.y, diameter, diameter);
             if(diameter >100)
             {
               playerPos.x = 0;
               playerPos.y = 0;
               diameter = 0;
             }
           }
    }
    void playerMouseClicked()
    {
      if(mouseClicked == false)
      {
        targetPos = new PVector(mouseX, mouseY);
        mouseClicked = true;
      } 
    }
    
    void moveTowardTarget()
    {
      //if our x is less than the target x find the distance
      //make the missile velocity 1/10 of that distance
      //and as long as we havent reached it move towards it
      if(playerPos.x < targetPos.x)
      {
        distanceBetween.x = targetPos.x - playerPos.x;
        missileVel.x = distanceBetween.x/10;
        if(playerPos.x != targetPos.x)
        {
          playerPos.x += missileVel.x;
          incrementingPos++;
        }
      }
      //if our x is more than the target x find the distance
      //same as above
      else if (playerPos.x > targetPos.x)
      {
        distanceBetween.x = playerPos.x - targetPos.x;
        missileVel.x = distanceBetween.x/10;
        if(playerPos.x != targetPos.x)
        {
          playerPos.x -= missileVel.x;
          incrementingPos++;
        }
      }
      //if our y is more than the target y which it will always be
      //then same as above
      if(playerPos.y > targetPos.y)
      {
        distanceBetween.y = playerPos.y - targetPos.y;
        missileVel.y = distanceBetween.y/10;
        if(playerPos.y != targetPos.y)
         {
           playerPos.y -= missileVel.y;
         }
      }   
      
    }
}