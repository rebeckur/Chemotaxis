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
  	size(500, 500);
 	frameRate(5);
 	colony = new Bacteria[10];
 	for (int j = 0; j < colony.length; j++){
 		colony[j] = new Bacteria(150,100);
 	}
}   
public void draw()   
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
 		bacColor = (int)(Math.random()*5)+200;
 	}

 	public void move()
 	{
 		if (mouseX < bacX) {
 			bacX += (int)(Math.random()*2)-3;
 		} else if (mouseX > bacX){
 			bacX += (int)(Math.random()*2)+1;
 		}
 	}  

 	public void show()
 	{
 		fill(100, bacColor, 50);
 		ellipse(bacX, bacY, 8, 8);
 	}
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
