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

public class Main extends PApplet {

Turtle turtle;

public void setup(){
    

    turtle = new Turtle(width/8, height/2, 0, true);
    noLoop();
    background(0);
}

public void draw(){
    stroke(255);
    strokeWeight(1);

    koch(turtle, 3*width/4, 2);
}

public void koch(Turtle t, float length, int depth){
    if(depth <= 0) t.move(length);
    else {
        koch(t, length/3, depth-1);
        t.turn(-PI/3);
        koch(t, length/3, depth-1);
        t.turn(2*PI/3);
        koch(t, length/3, depth-1);
        t.turn(-PI/3);
        koch(t, length/3, depth-1);
    }
}
class Turtle{
    float x;
    float y;
    float angle;
    boolean writing;

    Turtle(float _x, float _y, float _a, boolean _w){
        this.x = _x;
        this.y = _y;
        this.angle = _a;
        this.writing = _w;
    }

    public void turn(float _a){
        this.angle += _a;
    }
    public void angleSet(float _a){
        this.angle = _a;
    }
    public void move(float d){
        line(this.x, this.y, this.x+d*cos(this.angle), this.y+d*sin(this.angle));
        this.x = this.x+d*cos(this.angle);
        this.y = this.y+d*sin(this.angle);
    }
    public void writingSet(boolean _w){
        this.writing = _w;
    }
    public void writingToggle(){
        this.writing = !this.writing;
    }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Main" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
