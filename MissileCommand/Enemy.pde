

class Enemy
{
    //missile
    PVector startingPos = new PVector(width/2,0);
    PVector enemyPos = new PVector(800/2,600);//starts bottom middle of screen
    PVector targetPos = new PVector(0,0); //where i need to hit
    PVector missileVel = new PVector(-1,-1);
    PVector heading = new PVector(0,0);
    boolean alive = false; 
    boolean hit = false;
    int speed = 0;
    float timer;
    
    Enemy()
    {
        
    }
    void spawnEnemy()
    {    
        startingPos = new PVector(random(100,width-100),0);
        enemyPos = new PVector(startingPos.x,startingPos.y);
        targetPos = new PVector(random(100,width-100),height); 
        heading = PVector.sub(targetPos, startingPos).normalize();
       
        alive = true; 
        hit = false;
        speed = 1;
    }
    void display()
    {
       
      if(alive == true && hit == false)
      {
   
        if (missileVel.x == -1)
        {
          missileVel = PVector.mult(heading,speed); 
        }
        else
        {
           enemyPos.add(missileVel); 
           if (targetPos.y - enemyPos.y <3 && enemyPos.x - targetPos.x < 3)
           {
            
             
             missileVel.x = -1;
             missileVel.y = -1;
            
           }
        }
        stroke(255,0,0);
        line(startingPos.x, startingPos.y, enemyPos.x, enemyPos.y);
  
        if (alive == true && hit == true && enemyPos.y < height)
        {
           enemyPos = startingPos;  
           alive = false;
           hit = false;
        }
      }
   }
}
     