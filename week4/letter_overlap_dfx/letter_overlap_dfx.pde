import processing.pdf.*;
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

int[][] lettersAB = {
  
 { 0, 1, 1, 0, // where A and B share space
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 0, 0, 0 }
};

int[][] lettersBC = {
 
 { 0, 1, 1, 0, // where B and C share space
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 0 }
};

int[][] lettersABC = {
  
 { 0, 1, 1, 0, // where A, B, and C share space
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 0, 0, 0 }
};

int[][] lettersJustA = {
  
 { 0, 1, 1, 0, // A
   1, 0, 0, 1,
   1, 1, 1, 1,
   1, 0, 0, 1,
   1, 0, 0, 1 }
};

int[][] lettersJustB = {
  
 { 1, 1, 1, 0, // B
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 1, 1, 0 }
};

int[][] lettersJustC = {
  
 { 0, 1, 1, 1, // C
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 1 }
};

int[][] lettersOverlap = {
  
 { 0, 1, 1, 0, // A and B
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 0, 0, 0 },
 
 { 0, 1, 1, 0, // B and C
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 0 }
};

int blockSize = 30;

void setup()
{
  size(600, 800,PDF, "filename.pdf");
  noStroke();
  background(255);
  fill(30,255);
  smooth();
  
  }

void draw() {
  
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
          ellipse(xPos, yPos, blockSize/4, blockSize/4);
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
  
  // Second Row ------------------------------------------------------------------------------------------
  
  fill(30,50);
  // draw where just A
  pushMatrix();
  translate(width/2 - (blockSize*5), height/2-(blockSize*2));
  for(int i = 0; i < lettersJustA.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersJustA[i].length; j++)
     {
        if(lettersJustA[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/2, blockSize/2);
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
  // draw where just B
  pushMatrix();
  translate(width/2 - (blockSize*5), height/2-(blockSize*2));
  for(int i = 0; i < lettersJustB.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersJustB[i].length; j++)
     {
        if(lettersJustB[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/2, blockSize/2);
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
   // draw where just B
  pushMatrix();
  translate(width/2 + (blockSize), height/2-(blockSize*2));
  for(int i = 0; i < lettersJustB.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersJustB[i].length; j++)
     {
        if(lettersJustB[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/2, blockSize/2);
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
   // draw where just C
  pushMatrix();
  translate(width/2 + (blockSize), height/2-(blockSize*2));
  for(int i = 0; i < lettersJustC.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersJustC[i].length; j++)
     {
        if(lettersJustC[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/2, blockSize/2);
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
  
  fill(30,255);
  // draw where A and B share a dot
  pushMatrix();
  translate(width/2 - (blockSize*5), height/2-(blockSize*2));
  for(int i = 0; i < lettersAB.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersAB[i].length; j++)
     {
        if(lettersAB[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/4, blockSize/4);
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
  // draw where B and C share a dot
  pushMatrix();
  translate(width/2 + (blockSize), height/2-(blockSize*2));
  for(int i = 0; i < lettersBC.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersBC[i].length; j++)
     {
        if(lettersBC[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/4, blockSize/4);
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
  
  
  // Third Row ------------------------------------------------------------------------------------------
  // draw tripple overlap letters
  // draw normal letters on top of each other
  fill(30, 50);
  pushMatrix();
  //translate(width/2 - (blockSize*5), height/2);
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  for(int i = 0; i < letters.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots,letters for A and B
     for(int j = 0; j < letters[i].length; j++)
     {
        if(letters[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize*3/4, blockSize*3/4);
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
  fill(30, 100);
  pushMatrix();
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  for(int i = 0; i < lettersOverlap.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots,letters for B and C
     for(int j = 0; j < lettersOverlap[i].length; j++)
     {
        if(lettersOverlap[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/2, blockSize/2);
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
  fill(30, 255);
  
  
  pushMatrix();
  translate(width/2- (blockSize*2), height*3/4-(blockSize*2));
  //rectMode(CENTER);
  for(int i = 0; i < lettersABC.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots
     for(int j = 0; j < lettersABC[i].length; j++)
     {
        if(lettersABC[i][j] == 1)
        {
          ellipse(xPos, yPos, blockSize/4, blockSize/4);
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

// Exit the program 
  println("Finished.");
  exit();
  }
