

class Player
{
    //missile
    PVector startingPos = new PVector(width/2,height);
    PVector playerPos = new PVector(width/2,height);//starts bottom middle of screen
    PVector targetPos = new PVector(0,0); //where i need to hit
    PVector missileVel = new PVector(-1,-1);
    PVector heading = new PVector(0,0);
    boolean alive = false; 
    boolean hit = false;
    boolean explode = false;
    int speed = 0;
    int diameter = 0;
    float timer;
    
    Player()
    {
        
    }
    void spawnPlayer(float tX, float tY)
    {
        playerPos = new PVector(width/2,height);
        targetPos = new PVector(tX,tY); 
        heading = PVector.sub(targetPos, startingPos).normalize();
        alive = true; 
        speed = 3;
     
    }
    void display()
    {
      stroke(0,0,255);
      line(startingPos.x, startingPos.y, playerPos.x, playerPos.y);
      if(alive == true && hit == false)
      { 
        if (missileVel.x == -1)
        {
          missileVel = PVector.mult(heading,speed); 
        }
        else
        {
           playerPos.add(missileVel); 
           if (playerPos.x - targetPos.x <3 && 
               playerPos.y - targetPos.y <3)
           {
              hit = true;
              missileVel.x = -1;
              missileVel.y = -1;
           }
        }
     
        if (hit == true && alive == true)
        {
           explode = true;
           diameter = 0;
           timer = millis();
        }
        
     }
     if(hit == true && alive == true && explode == true)
     {
        diameter += 5;
        if(timer + 500 < millis())
        {
           alive = false;
           hit = false;
           explode = false;
           playerPos = startingPos;
           diameter = 0;
        }
        fill(255,255,0);
        ellipse(playerPos.x,playerPos.y,diameter,diameter);
     }
       
   }
}
     