class GridSmall
{
  int cols;  //number of cols
  float pageMargin;
  Column[] columns;
  
  GridSmall(int _cols, float _pageMargin)
  {
    cols = _cols;
    pageMargin = _pageMargin;
    
    // make column objects
    columns = new Column[cols];
    float xPos = pageMargin;
    
    
    for(int i = 0; i < cols; i++)
    {
      columns[i] = new Column();
      //columns[i].x = xPos;
      columns[i].y = pageMargin; 
      //columns[i].w = 200;
      columns[i].h = height - (2*pageMargin);
      
      //xPos += 200;
    }
 
   columns[0].w = 25;
   columns[1].w = 400;
   columns[2].w = width - (2*pageMargin) - 25 -25 -400;
   columns[3].w = 25;
   
   columns[0].x = pageMargin;
   columns[1].x = pageMargin + 25;
   columns[2].x = pageMargin + 25 + 400;
   columns[3].x = pageMargin + 25 + 400 + columns[2].w;
  }

  void display()
  {
    // draw big bounding box
    noFill();
    stroke(0, 0, 255, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw each row
    for(int i = 0; i < cols; i++)
    {
      rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
    }
  }
}
