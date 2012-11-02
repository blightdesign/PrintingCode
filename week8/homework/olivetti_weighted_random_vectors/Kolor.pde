class Kolor
{
  int kolorA;
  int kolorB;
  int alphaNum;
  float percentage;

  Kolor(float _percentage, int _kolorA, int _kolorB, int _alphaNum)
    {
      percentage = _percentage;
      kolorA = _kolorA;
      kolorB = _kolorB;
      alphaNum = _alphaNum;
    }
    
  void kolorA()
    {
      canvas.fill(kolorA, alphaNum);
    }
  void kolorB()
    {
      canvas.fill(kolorB, alphaNum);
    }
}

