// Testing Git Push/Pull
// test 2

<<<<<<< HEAD
Level l;
=======
ArrayList<Bullet> bullets;
>>>>>>> bullet-shooting
Player p;

void setup()
{
  size(1280, 720);
<<<<<<< HEAD
  
  l = new Level();
  p = new Player(1 ,2);
=======
  bullets = new ArrayList<Bullet>();
  p = new Player(1, 2);
>>>>>>> bullet-shooting
}

void draw()
{
  l.display();
  p.move();
  p.display();
  for (Bullet b : bullets)
  {
    b.move();
    b.display();
  }
}

void keyPressed()
{
  if (keyCode == 32)
  {

    if (p.facingRight)
    {
      Bullet b = new Bullet(p.x, p.y, 1);
      bullets.add(b);
    } else
    {
      Bullet b = new Bullet(p.x, p.y, -1);
      bullets.add(b);
    }
  }
  if (key == 'w')
  {
    p.yspeed = -5;
  }
  if (key == 's')
  {
    p.yspeed = 5;
  }
  if (key == 'a')
  {
    p.xspeed = -5;
    p.facingRight = false;
  }
  if (key == 'd')
  {
    p.xspeed = 5;
    p.facingRight = true;
  }
}

void keyReleased()
{

  if (key == 'w')
  {
    p.yspeed = 0;
  }
  if (key == 's')
  {
    p.yspeed = 0;
  }
  if (key == 'a')
  {
    p.xspeed = 0;
  }
  if (key == 'd')
  {
    p.xspeed = 0;
  }
}
