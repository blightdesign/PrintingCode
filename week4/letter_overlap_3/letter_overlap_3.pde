int[][] letters = {
  
 { 0, 1, 1, 0, // A
   1, 0, 0, 1,
   1, 1, 1, 1,
   1, 0, 0, 1,
   1, 0, 0, 1 },
 
 { 1, 1, 1, 0, // B
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 1, 1, 0 },   
   
 { 0, 1, 1, 1, // C
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 1 }
};

int[][] lettersA = {
  
 { 0, 1, 1, 0, // A
   1, 0, 0, 1,
   1, 1, 1, 1,
   1, 0, 0, 1,
   1, 0, 0, 1 }
};

int[][] lettersB = {
 { 1, 1, 1, 0, // B
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 1, 1, 0 }
};
   
int[][] lettersC ={
 { 0, 1, 1, 1, // C
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 1 }
};


int blockSize = 30;
int blockSizeSmall = blockSize/4;
int blockSizeMed = blockSize*5/8;
int blockSizeLarge = blockSize;

void setup()
{
  size(600, 800);
  noStroke();
  background(255);
  fill(30,255);
  smooth();
  
  //First Row ------------------------------------------------------------------------------------------
  // draw normal letters
  pushMatrix();
  translate(width/2-(blockSize*8), (height/4)-(blockSize*2));
  for(int i = 0; i < letters.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < letters[i].length; j++)
     {
        if(letters[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSizeSmall, blockSizeSmall);
        }
        
        xPos += blockSize;
        
        if(j % 4 == 3)
        {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     translate(blockSize * 6, 0);
  }
  popMatrix();
  
  //Second Row ------------------------------------------------------------------------------------------
  fill(30,50);
  //Dots for where A or B reside
  pushMatrix();
  translate(width/2 - (blockSize*5), height/2-(blockSize*2));
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;
  
    for(int j = 0; j < lettersA[i].length; j++)
    {
      if(lettersA[i][j] == 1 || lettersB[i][j] == 1)
      {
        ellipse(xPos, yPos, blockSizeMed, blockSizeMed);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
    translate(blockSize * 6, -blockSize * 5);
  }
  popMatrix();
  //Dots for where B or C reside
  pushMatrix();
  translate(width/2 + (blockSize), height/2-(blockSize*2));
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;
  
    for(int j = 0; j < lettersA[i].length; j++)
    {
      if(lettersB[i][j] == 1 || lettersC[i][j] == 1)
      {
        ellipse(xPos, yPos, blockSizeMed, blockSizeMed);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
    translate(blockSize * 6, -blockSize * 5);
  }
  popMatrix();
  fill(30,255);
  
  pushMatrix();
  translate(width/2 - (blockSize*5), height/2-(blockSize*2));
  //Dots for where A and B share
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;
  
    for(int j = 0; j < lettersA[i].length; j++)
    {
      if(lettersA[i][j] == 1 && lettersB[i][j] == 1)
      {
        ellipse(xPos, yPos, blockSizeSmall, blockSizeSmall);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
    translate(blockSize * 6, -blockSize*5);
    //translate(width/2 + (blockSize), height/2-(blockSize*2));
    //Dots for where B and C share
    for(int j = 0; j < lettersB[i].length; j++)
    {
      if(lettersB[i][j] == 1 && lettersC[i][j] == 1)
      {
        ellipse(xPos, yPos, blockSizeSmall, blockSizeSmall);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
  }
  popMatrix();
    
  //Third Row ------------------------------------------------------------------------------------------
  fill(30,20);
  //Dots for where A, B, or C reside
  pushMatrix();
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;
  
    for(int j = 0; j < lettersA[i].length; j++)
    {
      if(lettersA[i][j] == 1 || lettersB[i][j] == 1 || lettersC[i][j] ==1)
      {
        ellipse(xPos, yPos, blockSizeLarge, blockSizeLarge);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
    translate(blockSize * 6, -blockSize * 5);
  }
  popMatrix();
  fill(30,100);
  
  //Dots for where A and B or B and C reside
  pushMatrix();
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;
  
    for(int j = 0; j < lettersA[i].length; j++)
    {
      if((lettersA[i][j] == 1 && lettersB[i][j] == 1) || (lettersB[i][j] == 1 && lettersC[i][j] == 1))
      {
        ellipse(xPos, yPos, blockSizeMed, blockSizeMed);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
    translate(blockSize * 6, -blockSize * 5);
  }
  popMatrix();
  
  
  fill(30,255);
  // Dots for where A, B, and C share
  pushMatrix();
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  for(int i = 0; i < lettersA.length; i++)
  {
    int xPos = 0;
    int yPos = 0;

    for(int j = 0; j < lettersA[i].length; j++)
    {
      if(lettersA[i][j] == 1 && lettersB[i][j] == 1 && lettersC[i][j] == 1)
      {
        ellipse(xPos, yPos, blockSizeSmall, blockSizeSmall);
      }
      xPos += blockSize;
      if(j % 4 == 3)
      {
        xPos = 0;
        yPos += blockSize; 
      }
    }
  }
  popMatrix();
  
  //saveFrame("grab.png");
}
