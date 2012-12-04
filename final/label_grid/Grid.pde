class Grid
{
  int num;  //number of rows
  float pageMargin;
  float heightSmall;
  float heightMed;
  float heightBig;
  Row[] rows;
  
  Grid(int _num, float _pageMargin, float _heightSmall, float _heightMed, float _heightBig)
  {
    num = _num;
    pageMargin = _pageMargin;
    heightSmall = _heightSmall;
    heightMed =   _heightMed;
    heightBig =   _heightBig;
    
    // make row objects
    rows = new Row[num];
    float yPos = pageMargin;
    
    for(int i = 0; i < num; i++)
    {
      rows[i] = new Row();
      rows[i].x = pageMargin;
      rows[i].w = width - (2*pageMargin);
    }
    rows[0].h = heightMed;
    rows[1].h = heightSmall;
    rows[2].h = heightBig;
    rows[3].h = heightSmall;
    rows[4].h = heightMed;
    
    rows[0].y = pageMargin;
    rows[1].y = pageMargin + heightMed;
    rows[2].y = pageMargin + heightMed + heightSmall;
    rows[3].y = pageMargin + heightMed + heightSmall + heightBig;
    rows[4].y = pageMargin + heightMed + heightSmall + heightBig + heightSmall;
  }

  void display()
  {
    // draw big bounding box
    noFill();
    stroke(100, 100,100, 100);
    // draw each row
    for(int i = 0; i < num; i++)
    {
      rect(rows[i].x, rows[i].y, rows[i].w, rows[i].h);
    }
  }
}
