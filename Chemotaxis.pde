 //declare bacteria variables here
int bacX;
int bacY;
int bacColor;

Bacteria [] colony;

void setup()   
{     
 	//initialize bacteria variables here
  	size(400, 400);
 	frameRate(5);
 	colony = new Bacteria[40];
 	for (int j = 0; j < colony.length; j++){
 		colony[j] = new Bacteria(150,150);
 	}
}   
void draw()   
{    
 	//move and show the bacteria
 	background(0);
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
 		bacColor = color(255, 255, (int)(Math.random()*150)+50);
 	}

 	void move()
 	{
 		//bacX += (int)(Math.random()*5)-2;
 		//bacY += (int)(Math.random()*5)-2;
 		if (bacX <= mouseX)
 		{
 			bacX += (int)(Math.random()*7)+5;
 		}
 		if (bacX >= mouseX)
 		{
 			bacX += (int)(Math.random()*7)-5;
 		}
 		if (bacY <= mouseY)
 		{
 			bacY += (int)(Math.random()*7)+5;
 		}
 		if (bacY >= mouseY)
 		{
 			bacY += (int)(Math.random()*7)-5;
 		}
 	}  

 	void show()
 	{
 		int size = (int)(Math.random()*5)+1;
 		noStroke();
 		fill(bacColor);
 		ellipse(bacX, bacY, size, size);
 	}

}    

void mousePressed()
{
	bacX = (int)(Math.random()*200);
 	bacY = (int)(Math.random()*200);
}