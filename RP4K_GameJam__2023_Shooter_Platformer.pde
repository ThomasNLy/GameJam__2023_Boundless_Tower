// Testing Git Push/Pull
// test 2

Level l;
Player p;

void setup()
{
  size(1280, 720);
  l = new Level();
  p = new Player(1 ,2);
}

void draw()
{
  l.display();
  p.move();
  p.display();
}
