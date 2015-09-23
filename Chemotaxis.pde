 //declare bacteria variables here
int bacX;
int bacY;
int bacColor;

Bacteria [] colony;

PImage img;

void setup()   
{     
 	//initialize bacteria variables here
  	size(500, 400);
 	frameRate(7);

 	img = loadImage("nightsky.png");

 	colony = new Bacteria[150];
 	for (int j = 0; j < colony.length; j++)
 	{
 		colony[j] = new Bacteria(100,150);
 	}
}   
void draw()   
{    
 	//move and show the bacteria
 	background(0);
 	image(img, 0, 0);
 	for (int i = 0; i < colony.length; i++)
 	{
	 	colony[i].move();
	 	colony[i].show();
 	}
}  
class Bacteria    
{
	int opa = (int)(Math.random()*50)+70;
 	Bacteria(int x, int y)
 	{
 		bacX = x;
 		bacY = y;
 		bacColor = color(255, 255, (int)(Math.random()*150)+50, opa);
 	}

 	void move()
 	{
 		if (bacX <= pmouseX)
 		{
 			bacX += (int)(Math.random()*20)+18;
 		}
 		if (bacX >= pmouseX)
 		{
 			bacX += (int)(Math.random()*20)-18;
 		}
 		if (bacY <= pmouseY)
 		{
 			bacY += (int)(Math.random()*20)+18;
 		}
 		if (bacY >= pmouseY)
 		{
 			bacY += (int)(Math.random()*20)-18;
 		}
 		if (mousePressed){
 			bacX = (int)(Math.random()*500);
 			bacY = (int)(Math.random()*400);
 		}
 	}

 	void show()
 	{
 		int size = (int)(Math.random()*6)+1;
 		noStroke();
 		fill(bacColor);
 		ellipse(bacX, bacY, size, size);
 	}

}    
