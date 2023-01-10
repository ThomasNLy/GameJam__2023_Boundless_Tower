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
    background(200, 200, 200);
    
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
    // Base floor
    floors.add(new Floor(0, 700));
    floors.get(0).w = 1280;
    
    // Additional floors
    for(int i = 0; i < randNumFloors; i++)
    {
      int randX, randY;
    
      randX = int(random(0, 10));
      randY = int(random(1, 7));

      floors.add(new Floor((randX * 100), (randY * 100)));
    }
  }
}
