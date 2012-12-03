// Class for house images, have two types House1 and House2, can turn on top stick by setting stickFlag

class House
{
  float x;
  float y;
  float unit;
  int stickFlag;
  
  House(float _x, float _y, float _unit, int _stickFlag)
  {
    x = _x;
    y = _y;
    unit = _unit;
    stickFlag = _stickFlag;
  }
  
  void displayHouse1()
  {
    pushMatrix();
    translate(x, y);
    beginShape();
      vertex( -39*unit, 25*unit);
      vertex(-18*unit, 2*unit);
      vertex(15*unit, 10*unit);
      vertex(38*unit, 37*unit);
      vertex(38*unit, 98*unit);
      vertex(22*unit, 98*unit);
      vertex(22*unit, 65*unit);
      vertex(11*unit, 65*unit);
      vertex(11*unit, 98*unit);
      vertex(-6*unit, 98*unit);
      vertex( -39*unit, 78*unit);
      vertex( -39*unit, 25*unit);
    endShape();
    if (stickFlag == 1)
    {
      line(0*unit,5*unit,0*unit,-2*unit);
    }
    popMatrix();
  }
  void displayHouse2()
  {
    pushMatrix();
    translate(x, y);
    beginShape();
      vertex( -38*unit,  35*unit);
      vertex(-18*unit,  11*unit);
      vertex(18*unit,   0*unit);
      vertex(39*unit,  24*unit);
      vertex(39*unit,  75*unit);
      vertex(5*unit,  96*unit);
      vertex(-11*unit,  96*unit);
      vertex(-11*unit,  67*unit);
      vertex(-22*unit,  67*unit);
      vertex(-22*unit,  96*unit);
      vertex( -38*unit,  96*unit);
      vertex( -38*unit,  35*unit);
    endShape();
    if (stickFlag == 1)
    {
      line(0*unit,5*unit,0*unit,-2*unit);
    }
    popMatrix();
  }
  
}
