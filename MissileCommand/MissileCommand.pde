Player p;

void setup()
{
   size(800,600);
   background(255);
   smooth();
   p = new Player();
}

void draw()
{
   p.display(); 
}

void mouseClicked()
{
   p.playerMouseClicked(); 
}