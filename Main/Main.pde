Turtle turtle;

void setup(){
    size(600, 600);

    turtle = new Turtle(width/8, height/2, 0, true);
    noLoop();
    background(0);
}

void draw(){
    stroke(255);
    strokeWeight(1);

    koch(turtle, 3*width/4, 2);
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