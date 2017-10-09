int missileCount = 5;
Player[] p = new Player[missileCount];
Enemy[] e = new Enemy[missileCount];
boolean gameRunning;
PFont f = new PFont();

void setup()
{
   f = createFont("vga850",24);
   textFont(f);
   size(1280,720);
   gameRunning = true;
   for(int i = 0; i < missileCount; i++)
   {
     p[i] = new Player();
     e[i] = new Enemy();
   }
}

void draw()
{
   background(0);
    
   if(gameRunning == true)
   {
     
     enemyOnScreen();
     for(int i = 0; i < missileCount; i++)
     {
       p[i].display();
       e[i].display();
    
     }
    checkCollision(p,e);
   }
   else if(gameRunning == false)
   {
      text("Game Over",width/2 - 75, height/2); 
   }
}

void mouseClicked()
{
  for(int i = 0; i < missileCount; i++)
  {
     if(p[i].alive == false)
     {
       p[i].spawnPlayer(mouseX,mouseY);
       break;
     }
  }
}
void enemyOnScreen()
{
  for(int i = 0; i < missileCount; i++)
  {
     if(e[i].enemyPos.y >= height)
     {
            println("cmonBruh"); 
        gameRunning = false; 
     }
     if(e[i].alive == false)
     {
       e[i].spawnEnemy();
       break;
     }
    
  }
}

void checkCollision(Player[] pC, Enemy[] eC)
{
    for(int i =0; i<missileCount;i++)
    {
      for(int j =0; j<missileCount; j++)
      {
        if (PVector.sub(pC[i].playerPos, eC[j].enemyPos).mag() < pC[i].diameter)
         {
           eC[j].alive = false;
         }
      }
    }
   
    
  }
 