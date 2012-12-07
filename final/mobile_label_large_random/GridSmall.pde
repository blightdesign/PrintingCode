class GridSmall
{
  int num;  //number of rows
  float pageMargin;
  float heightOne;
  float heightTwo;
  float heightThree;
  float heightFour;
  Row[] rows;
  
  GridSmall(int _num, float _pageMargin, float _heightOne, float _heightTwo, float _heightThree, float _heightFour)
  {
    num = _num;
    pageMargin =  _pageMargin;
    heightOne =   _heightOne;
    heightTwo =   _heightTwo;
    heightThree = _heightThree;
    heightFour =  _heightFour;
    
     // make column objects
    rows = new Row[num];
    float yPos = pageMargin;
    
    for(int i = 0; i < num; i++)
    {
      rows[i] = new Row();
      rows[i].x = pageMargin;
      rows[i].w = canvas.width - (2*pageMargin);
    }
    rows[0].h = heightOne;
    rows[1].h = heightTwo;
    rows[2].h = heightThree;
    rows[3].h = heightFour;
    
    rows[0].y = pageMargin;
    rows[1].y = pageMargin + heightOne;
    rows[2].y = pageMargin + heightOne + heightTwo;
    rows[3].y = pageMargin + heightOne + heightTwo + heightThree;
  }


  void display()
  {
    // draw big bounding box
    canvas.noFill();
    canvas.stroke(100, 100, 100, 100);
    
    // draw each row
    for(int i = 0; i < num; i++)
    {
      canvas.rect(rows[i].x, rows[i].y, rows[i].w, rows[i].h);
    }
  }
}
