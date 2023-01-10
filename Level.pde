class Level {
  float x;
  float y;
  int w;
  int h;
  ArrayList<Floor> floors;
 
  Level()
  {
    this.x = 0;
    this.y = 0;
    this.w = 1280;
    this.h = 720;
    floors = new ArrayList<Floor>();
    generateFloors();
  }
  
  void display()
  {
    fill(100, 100, 100);
    // base floor (y value could be written as this.h - 20)
    rect(this.x, 700, this.w, 20);
    
    // level generated floors
    for(int i = 0; i < floors.size(); i++)
    {
      floors.get(i).display();
    }
  }
  
  void generateFloors()
  {
    int randNumFloors;

    randNumFloors = int(random(10, 15));
    
    // ------------- Floors
    for(int i = 0; i < randNumFloors; i++)
    {
      int randX, randY;
    
      randX = int(random(0, 10));
      randY = int(random(1, 7));

      floors.add(new Floor((randX * 100), (randY * 100)));
    }
  }
}
