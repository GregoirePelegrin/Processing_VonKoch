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

    void turn(float _a){
        this.angle += _a;
    }
    void angleSet(float _a){
        this.angle = _a;
    }
    void move(float d){
        line(this.x, this.y, this.x+d*cos(this.angle), this.y+d*sin(this.angle));
        this.x = this.x+d*cos(this.angle);
        this.y = this.y+d*sin(this.angle);
    }
    void writingSet(boolean _w){
        this.writing = _w;
    }
    void writingToggle(){
        this.writing = !this.writing;
    }
}