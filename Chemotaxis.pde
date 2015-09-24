 //declare bacteria variables here
int bacX;
int bacY;
int bacColor;

Bacteria [] colony;

int idleX;
int idleY;

Idle [] fireflies;

PImage forest;
PImage ocean;

boolean backChange = true;

void setup()   
{     
 	//initialize bacteria variables here
  	size(500, 330);
 	frameRate(6);

 	forest = loadImage("nightsky.png");
 	ocean = loadImage("oceannight.jpg");

 	colony = new Bacteria[100];
 	for (int j = 0; j < colony.length; j++)
 	{
 		colony[j] = new Bacteria(100,150);
 	}

 	fireflies = new Idle[50];
 	for (int a = 0; a < fireflies.length; a++)
 	{
 		fireflies[a] = new Idle();
 	}
}

void draw()   
{    
 	background(0);
 	//for changing background
	if (backChange == true)
 	{
	 	image(forest, 0, 0);
	 	if (keyPressed)
	 	{
	 		backChange = false;
	 	}
	}
	else
	{
	 	image(ocean, 0, 0);
	 	if (keyPressed)
	 	{
	 		backChange = true;
	 	}
	}
 	
	for (int b = 0; b < fireflies.length; b++)
	{
		fireflies[b].move();
		fireflies[b].show();
	}

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
 		//biased walk towards the mouse
 		if (bacX <= pmouseX)
 		{
 			bacX += (int)(Math.random()*20)+17;
 		}
 		if (bacX >= pmouseX)
 		{
 			bacX += (int)(Math.random()*20)-17;
 		}
 		if (bacY <= pmouseY)
 		{
 			bacY += (int)(Math.random()*20)+17;
 		}
 		if (bacY >= pmouseY)
 		{
 			bacY += (int)(Math.random()*20)-17;
 		}
 		//scattering
 		if (mousePressed)
 		{
 			bacX = (int)(Math.random()*500);
 			bacY = (int)(Math.random()*321);
 			bacColor = color(255, 255, (int)(Math.random()*150)+50, opa);
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

class Idle
{
	Idle()
	{
		idleX = (int)(Math.random()*500)+1;
		idleY = (int)(Math.random()*321);
	}

	void move()
	{
		idleX += (int)(Math.random()*9)-4;
		idleY += (int)(Math.random()*9)-4;
	}
	void show()
	{
		int size = (int)(Math.random()*5)+1;
 		noStroke();
 		fill(color(255, 255, (int)(Math.random()*150)+50, 100));
 		ellipse(idleX, idleY, size, size);
	}
}