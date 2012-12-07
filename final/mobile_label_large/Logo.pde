class Logo
{
  float x;
  float y;
  float smallFontSize;
  
  Logo(float _x, float _y, float _smallFontSize)
  {
    x = _x;
    y = _y;
    smallFontSize = _smallFontSize;
  }
  
  void displayLogo()
  {
    //fill(359,100,40,50);
    canvas.pushMatrix();
    canvas.translate(x, y);
    canvas.noStroke();
    // L
    canvas.beginShape();
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.9*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.9*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.9*smallFontSize, 1.09*smallFontSize,1.19*smallFontSize, 0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
    canvas.endShape();
    // B
    canvas.beginShape();
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.885*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.885*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.885*smallFontSize, 1.15*smallFontSize, .65*smallFontSize, 0.86*smallFontSize, 0.565*smallFontSize);
      canvas.vertex(0.86*smallFontSize, 0.565*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.5*smallFontSize, 1.185*smallFontSize, 0.05*smallFontSize,  0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
    canvas.endShape();
    canvas.popMatrix();
  }
}
