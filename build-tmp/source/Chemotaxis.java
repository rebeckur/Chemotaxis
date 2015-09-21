import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here
int bacX;
int bacY;
int bacColor;

Bacteria [] colony;

public void setup()   
{     
 	//initialize bacteria variables here
  	size(400, 400);
 	frameRate(10);
 	colony = new Bacteria[20];
 	for (int j = 0; j < colony.length; j++)
 	{
 		colony[j] = new Bacteria(100,150);
 	}
}   
public void draw()   
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
	int opa = (int)(Math.random()*200)+20;
 	Bacteria(int x, int y)
 	{
 		bacX = x;
 		bacY = y;
 		bacColor = color(255, 255, (int)(Math.random()*150)+50, opa);
 	}

 	public void move()
 	{
 		if (bacX <= mouseX)
 		{
 			bacX += (int)(Math.random()*10)+8;
 		}
 		if (bacX >= mouseX)
 		{
 			bacX += (int)(Math.random()*10)-8;
 		}
 		if (bacY <= mouseY)
 		{
 			bacY += (int)(Math.random()*10)+8;
 		}
 		if (bacY >= mouseY)
 		{
 			bacY += (int)(Math.random()*10)-8;
 		}
 	}

 	public void show()
 	{
 		int size = (int)(Math.random()*6)+1;
 		noStroke();
 		fill(bacColor);
 		ellipse(bacX, bacY, size, size);
 	}

}    

public void mousePressed()
{
	bacX += (int)(Math.random()*800)-400;
 	bacY += (int)(Math.random()*800)-400;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
