class Grid
{
  int num;  //number of rows
  float pageMargin;
  Row[] rows;
  
  Grid(int _num, float _pageMargin)
  {
    num = _num;
    pageMargin = _pageMargin;
    
    // cache the full width of all rows
    float fullWidth = width - (2*pageMargin);
    float[] rands = new float[num];
    float ranSum = 0;
  
    for(int i = 0; i < rands.length; i++)
    {
      // generate a number between 0 and 1
      rands[i] = random(1);
   
      // OPTIONAL! tweak the number to avoid too big a size difference
      if(rands[i] < 0.3)  rands[i] = 0.3;
   
      // add to the sum
      ranSum += rands[i];
    }
  
    // now divide each random number with its sum to normalize and multiply by full width
    for(int i = 0; i < rands.length; i++)
    {
       rands[i] = (rands[i] / ranSum) * fullWidth; 
    }
    
    // make column objects
    rows = new Row[num];
    //float xPos = pageMargin;
    float yPos = pageMargin;
    
    
    
    for(int i = 0; i < num; i++)
    {
      rows[i] = new Row();
      //rows[i].x = xPos;
      //rows[i].y = pageMargin;
      rows[i].x = pageMargin;
      //rows[i].y = yPos;
      //rows[i].w = rands[i];
      //rows[i].h = height - (2*pageMargin);
      rows[i].w = width - (2*pageMargin);
      //rows[i].h = rands[i];
      //rows[i].h = 50;
      
      //xPos += rands[i];
      //yPos += rows[i].h;
    }
    rows[0].h = 150;
    rows[1].h = 75;
    rows[2].h = 250;
    rows[3].h = 75;
    rows[4].h = 150;
    
    rows[0].y = pageMargin;
    rows[1].y = pageMargin + 150;
    rows[2].y = pageMargin + 150 + 75;
    rows[3].y = pageMargin + 150 + 75 + 250;
    rows[4].y = pageMargin + 150 + 75 + 250 + 75;
  }

  void display()
  {
    // draw big bounding box
    noFill();
    stroke(255, 0, 0, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw each column
    for(int i = 0; i < num; i++)
    {
      rect(rows[i].x, rows[i].y, rows[i].w, rows[i].h);
    }
  }
}
