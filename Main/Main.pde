int maxDepth;

void setup(){
    size(600, 600);

    maxDepth = 2;
}

void draw(){
    background(0);
    stroke(255);
    strokeWeight(1);
    
    Turtle turtle = new Turtle(width/8, height/2, 0, true);
    koch(turtle, 3*width/4, maxDepth);
}

void koch(Turtle t, float length, int depth){

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

void mousePressed() {
    if(mouseButton == LEFT)
        maxDepth++;
    else if(mouseButton == RIGHT)
        maxDepth--;
}