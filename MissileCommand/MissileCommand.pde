//
// C00204076
// Brandon Seah-Dempsey
// Started at 11:26 22 September 2017
// Finished at
// Time taken:
// Known bugs:
  Player p = new Player();
  int expandX = 0, expandY = 0, reset = 0;
boolean active = true;

Enemy[] enemy = new Enemy[5];
void setup()
{
  size(800, 600);
  background(255);
  smooth();
  
  for(int i = 0; i < 5; i++)
  {
    enemy[i] = new Enemy();
  }
}

void draw()
{
  //stroke(0);
  //strokeWeight(2);
  
  //p.update(); 
  p.display(); 
  /*if(active == true)
  {
    expandX++;
    expandY++;
    if(expandX >= 500 && expandY >= 500)
    {
      active = false;
    }
    
    fill(255, 104, 0);
    ellipse(400, 300, expandX, expandY);
  }
  
  else if(active == false)
  {
    reset++;
    
    if(reset >= 10)
    {
      expandX = 0;
      expandY = 0;
      reset = 0;
      active = true;
    }
  } */
  
  for(int i = 0; i < 5; i++)
  {
    enemy[i].update();
    enemy[i].display();
  }
}
   

void mouseClicked()
{
  p.playerMouseClicked();
}