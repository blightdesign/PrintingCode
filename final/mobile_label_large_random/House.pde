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
    canvas.pushMatrix();
    canvas.translate(x, y);
    canvas.beginShape();
      canvas.vertex(-39*unit, 25*unit);
      canvas.vertex(-18*unit,  2*unit);
      canvas.vertex( 15*unit, 10*unit);
      canvas.vertex( 38*unit, 37*unit);
      canvas.vertex( 38*unit, 98*unit);
      canvas.vertex( 22*unit, 98*unit);
      canvas.vertex( 22*unit, 65*unit);
      canvas.vertex( 11*unit, 65*unit);
      canvas.vertex( 11*unit, 98*unit);
      canvas.vertex( -6*unit, 98*unit);
      canvas.vertex(-39*unit, 78*unit);
      canvas.vertex(-39*unit, 25*unit);
    canvas.endShape();
    if (stickFlag == 1)
    {
      canvas.line(0*unit,5*unit,0*unit,-2*unit);
    }
    canvas.popMatrix();
  }
  void displayHouse2()
  {
    canvas.pushMatrix();
    canvas.translate(x, y);
    canvas.beginShape();
      canvas.vertex(-38*unit,  35*unit);
      canvas.vertex(-18*unit,  11*unit);
      canvas.vertex( 18*unit,   0*unit);
      canvas.vertex( 39*unit,  24*unit);
      canvas.vertex( 39*unit,  75*unit);
      canvas.vertex(  5*unit,  96*unit);
      canvas.vertex(-11*unit,  96*unit);
      canvas.vertex(-11*unit,  67*unit);
      canvas.vertex(-22*unit,  67*unit);
      canvas.vertex(-22*unit,  96*unit);
      canvas.vertex(-38*unit,  96*unit);
      canvas.vertex(-38*unit,  35*unit);
    canvas.endShape();
    if (stickFlag == 1)
    {
      canvas.line(0*unit,5*unit,0*unit,-2*unit);
    }
    canvas.popMatrix();
  }
}
