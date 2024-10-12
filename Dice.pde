//int sum = 0;
Dice bob;
void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  int sum = 0;
  for (int y = 0; y < 450; y += 50)
  {
    for (int x = 0; x < 500; x += 50)
    {
      bob = new Dice(x, y);
      bob.show();
      fill(250, 250, 250);
      rect(250, 480, 40, 20);
      sum = sum + bob.numDots;
      fill(0, 0, 0);
      text("Sum" + sum, 250, 500);
    }
  }
  /*int sum = bob.numDots * bob.numDots;
   fill(250, 250, 250);
   rect(250, 480, 40, 20);
   fill(0);
   text("Sum" + sum, 250, 500);*/
}

void mousePressed() {
  redraw();
}

class Dice
{//start of dice
  int numDots, myX, myY;
  Dice(int x, int y)//constructor
  {
    roll();
    numDots = (int) (Math.random() * 6) + 1;
    myX = x;
    myY = y;
  }

  void roll() {
    if ((int) (Math.random()) < 2) {
      numDots = 1;
    } else if ((int) (Math.random()) < 3) {
      numDots = 2;
    } else if ((int) (Math.random()) < 4) {
      numDots = 3;
    } else if ((int) (Math.random()) < 5) {
      numDots = 4;
    } else if ((int) (Math.random()) < 6) {
      numDots = 5;
    } else {
      numDots = 6;
    }
  }

  void show()
  {
    fill(250, 250, 250);
    rect(myX, myY, 50, 50);
    fill(0, 0, 0);
    if (numDots == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (numDots == 2) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (numDots == 3) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (numDots == 4) {
      fill(0, 0, 0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (numDots == 5) {
      fill(0, 0, 0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (numDots == 6) {
      fill(0, 0, 0);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
    }
  }
}//end of dice
