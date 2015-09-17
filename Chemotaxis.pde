 //declare bacteria variables here
int bacX;
int bacY;
int bacColorG;
int bacColorB;

Bacteria [] colony;

void setup()   
{     
 	//initialize bacteria variables here
  	size(500, 500);
 	//frameRate(5);
 	colony = new Bacteria[50];
 	for (int j = 0; j < colony.length; j++){
 		colony[j] = new Bacteria(250,250);
 	}
}   
void draw()   
{    
 	//move and show the bacteria
 	background(50, 150, 50);
 	for (int i = 0; i < colony.length; i++)
 	{
	 	colony[i].move();
	 	colony[i].show();
 	}
}  
class Bacteria    
{     
 	Bacteria(int x, int y)
 	{
 		bacX = x;
 		bacY = y;
 		bacColorG = (int)(Math.random()*150)+50;
 		bacColorB = (int)(Math.random()*100);
 	}

 	void move()
 	{
 		bacX += (int)(Math.random()*3)-1;
 		bacY += (int)(Math.random()*3)-1;
 		if (mouseX > bacX)
 		{
 			bacX += (int)(Math.random()*5)-2;
 		}
 		if (mouseX < bacX)
 		{
 			bacX += (int)(Math.random()*3)-2;
 		}
 		if (mouseY > bacY)
 		{
 			bacY += (int)(Math.random()*5)-2;
 		}
 		if (mouseY < bacY)
 		{
 			bacY += (int)(Math.random()*3)-2;
 		}
 	}  

 	void show()
 	{
 		noStroke();
 		fill(50, bacColorG, bacColorB);
 		ellipse(bacX, bacY, 8, 8);
 	}
}    
