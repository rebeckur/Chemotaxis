 //declare bacteria variables here
int bacX;
int bacY;
int bacColor;


void setup()   
{     
 	//initialize bacteria variables here   
}   
void draw()   
{    
 	//move and show the bacteria   
}  
class Bacteria    
{     
 	Bacteria(int x, int y, int clr)
 	{
 		bacX = x;
 		bacY = y;
 		bacColor = clr;
 	}

 	void move()
 	{
 		bacX = bacX + (int)(Math.random()*5)-2;
 		bacY = bacY + (int)(Math.random()*5)-2;
 	}  

 	void show()
 	{
 		fill(bacColor, bacColor, 50);
 		ellipse(bacX, bacY, 10, 10);
 	}
}    