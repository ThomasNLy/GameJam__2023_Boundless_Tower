// Testing Git Push/Pull
// test 2


Player p;

void setup()
{
  size(1280, 720);
  
  p = new Player(1 ,2);
}

void draw()
{
  p.move();
  p.display();
}
