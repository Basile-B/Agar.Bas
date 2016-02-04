
void setup() {
    size(1024, 526);
}

var cellSize =30;
var score =0;
var diameter = cellSize;
var x = 200;
var vx = 2;
var vy = 5;
var y = 5;
var ax = 2;
var ay = 2;
var x2 = 200;
var y2 = 5;
var vx2 = 2;
var vy2 = 5;
var dotExists = 1;
var dots = [];
for(var i=0; i <1000 ; ++i){
    dots.push({x:random(1917), y:random965)});
}
var distance = function (x1,y1,x2,y2){
    var a=x1-x2;
    var b=y1-y2;
    return sqrt(a*a+b*b);
};


void draw() {
    for (var i = 0; i <dots.length; i ++){
        if (distance(x,y,dots[i].x, dots [i].y) < diameter/2){
            dots.splice(i,1);
            score = score + 1;
            diameter = cellSize + score;
        
        }
    }
	background(255, 255, 255);

	for (var i = 0; i<1917;i = i+50){
		line (i,0,i,965);
	}

	for (var j = 0; j<965;j = j+50){
		line (0,j,1917,j);
	}

	for (var i = 0; i <dots.length; i ++){
        ellipse(dots[i].x, dots [i].y, 10,10);
    }
    var d = sqrt(pow((x2-x), 2)+pow((y2-y), 2));
    

    text(score, 50, 390);

    // Cell
    fill(255, 255, 0);
    ellipse(x, y, diameter, diameter);
    fill(255, 0, 0);
    //ellipse(x2, y2, cellSize, cellSize);
    
    
    y2 += vy2;
    x2 += vx2;

    vx = mouseX-x;
    vy = mouseY-y;
    var move = sqrt(pow(mouseX-x, 2) + pow(mouseY-y, 2)) / 3;
    x = x + vx/move;
    y = y + vy/move;



    fill(235, 213, 144);

    //if(x > 100&& x < 200&& y > 150&& y < 250){
    //vx = vx+ax;
    //vy = vy+ay;
    //}
};
