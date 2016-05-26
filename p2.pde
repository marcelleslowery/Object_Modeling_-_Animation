//Marcelles Lowery
//Hero Object: Electric Pokemon Ampharos
//Instance Object: pokeTree()

import processing.opengl.*;

Ampharos ampharos = new Ampharos();

//texture images
PImage img;
PImage img2;
PImage img3;
PShape Pokeball;
PShape ground;
PShape trees;

//movement variables
float time = 0;
float pacer = 0;

//capture animation variables
boolean capture;
float sX = 1;
float sY = 1;
float xi = 0.05;
float yi = 0.05;

//PokeBall variables
boolean ballMove, ballRoll, caught;
float bY = -10;
float drop = 0;
float ball = 0;
float ang = 0.05;

//Ampharos position variables
boolean ampMoveFwd;
boolean ampMoveBack;
boolean ampKick;
boolean minimize;
float s = 1;
float ampX = -60;

//camera angle variables
float cX = 0;
float cY = 0;
float cZ = 0;

float c2Y = 0;
float r2Y = 0;

//controls cameras
boolean initcam, cam1, cam2, cam3, cam4, cam5, cam6;
boolean p1, p2, p3, p4;

void setup() {
  size(800, 800, P3D);  // must use 3D here !!!
  noStroke();           // do not draw the edges of polygons
  
  img = loadImage("pokeball.png");
  Pokeball = createShape(SPHERE, 2);
  Pokeball.setTexture(img);
  
  img2 = loadImage("ground.jpg");
  ground = createShape(RECT,0,0,175,175);
  ground.setTexture(img2);
  
  img3 = loadImage("trees.jpg");
  trees = createShape(RECT,0,0,175,175);
  trees.setTexture(img3);
}

// Draws a rotating Ampharos (Electric Pokemon) & a PokeBall
void draw() {
  if(time<=1.85) {
   initcam = true;
   ballMove = true;
  } else {
   ballMove = false;
  }// handle ending sequence here too!
  
  if(time>=10 && time<=17) {
    ampMoveFwd = true;
  } else if(time>=19 && time<=28) {
    initcam = false;
    ampMoveFwd = false;
    cam1 = true;
  } else if(time < 30) {//pause
    cam1 = false;
    ampMoveFwd = false;
    p1 = true;
  } else if(time>=30 && time <= 37) { //cam2 case
    p1 = false;
    cam2 = true; 
  } else if(time < 42) {
    p2 = true;
    cam2 = false;
  } else if(time>=42 && time <= 46) {
    p2 = false;
    cam3 = true;
  } else if(time<48) {
    ampKick = true;
  } else if(time>=48.05 && time<=51.05) {
    ballRoll = true;
  } else if (time<50) {
    ampKick = false;
  } else if(time>51.5 && time<=53) {
    ballRoll = false;
  } else if(time>53 && time<57) {
    cam3 = false;
    cam4 = true;
    ballRoll = true;
  } else if(time>=57 && time<=60) {
    ampMoveBack = true;
  } else if(time>60 && time<62) {
    ampMoveBack = false;
    ballRoll = false;
  } else if(time>=62 && time<=65) {
    cam4 = false;
    cam5 = true;
  } else if(time>65 && time<=70) {
    capture = true;
  } else if(time>70 && time<=73) {
    minimize = true;
  } else if(time>74 && time<=76) {
    capture = false;
    minimize = false;
  } else if(time>76 && time<=82) {
    cam5 = false;
    cam6 = true;
  } else if(time>82 && time<=88) {
    caught = true;
  } else {
    caught = false;
  }
  
  resetMatrix();  // set the transformation matrix to the identity (important!)

  background(128);  // clear the screen to black
  
  // set up for perspective projection
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);
  
  //camera (60, -90, 125, 20.0, 0.0, -1.0, 0.0, 1.0, 0.0); //use this to check whole scene
  //camera (-5, -30, 75, 10.0, 0.0, -1.0, 0.0, 1.0, 0.0); //tough angle
  
  operateCams();
    
  // create an ambient light source
  ambientLight (102, 102, 102);
  
  // create three directional light sources
  lightSpecular (204, 204, 204);
  
  directionalLight (102, 102, 102, 2, 2, -1);
  directionalLight (152, 152, 152, -2, 2, -1);
  directionalLight (75, 75, 75, 0, -2, -1);
  
  pushMatrix();
  scale(s,s,s);
  translate(ampX+=pacer,0,0);
  rotate(7.87, 0.0, 1.0, 0.0);
  if(!ampMoveFwd && !ampKick && !ampMoveBack) {
    pacer = 0;
    ampharos.drawStillPokemon(); 
  } else if(ampMoveFwd) {
    pacer = 0.5;
    ampharos.drawMovingPokemon();
  } else if(ampMoveBack) {
    pacer = -0.5;
    ampharos.drawMovingPokemon();
  } else if(ampKick) {
    ampharos.drawKickingPokemon();
  }
  popMatrix();
  
  pushMatrix();
  translate(20,bY+=drop,0);
  if(!ballMove) {
    drop = 0;
    //println(bY);
  } else if(ballMove) {
    drop = 0.5;
  }
  if(ballRoll) {
    if(ball>=.95 || ball<=-.95) {
      ang = -ang;
    }
    rotate(ball+=ang, 0.0, 0.0, 1.0);
  } else if(caught) {
    if(ball>=.95 || ball<=-.95) {
      ang = -ang;
    }
    rotate(ball-=ang, 1.0, 0.0, 0.0);
  } else {
    ball = 0;
  }
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(6.35, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
    
  pushMatrix();
  translate(-90,12,-60);
  rotate(7.87, 1.0, 0.0, 0.0);
  shape(ground);
  popMatrix();
  
  pushMatrix();
  translate(-90,-150,-55);
  shape(trees);
  popMatrix();
  
  pushMatrix();
  translate(-88,-150,115);
  rotate(7.87, 0.0, 1.0, 0.0);
  shape(trees);
  popMatrix();
  
  pushMatrix();
  translate(85,-150,-60);
  rotate(-7.87, 0.0, 1.0, 0.0);
  shape(trees);
  popMatrix();
  
  pushMatrix();
  translate(50,0,0);
  pokeTree();
  popMatrix();
  
  pushMatrix();
  translate(-30,0,50);
  pokeTree();
  popMatrix();
  
  pushMatrix();
  translate(-70,0,-15);
  pokeTree();
  popMatrix();
  
  pushMatrix();
  translate(10,0,90);
  pokeTree();
  popMatrix();
  
  if(capture) {
    capture();
  }
  if(minimize) {
    minimize();
  }
  time += 0.05;
}

void operateCams() {
  if(initcam) {
    camera (0.0, -0.5, 23.5, 20.0, 10.0, -1.0, 0.0, 1.0, 0.0);
  } else if (cam1) {
    // place the camera in the scene (just like gluLookAt())
    camera (0.0+cX, -0.5-cY, 23.5+cZ, 20.0, 10.0, -1.0, 0.0, 1.0, 0.0); //werk on dat y angle
    cX += 0.2;
    cY += 0.05;
    cZ += 0.1;
  } else if(!cam1 && p1 && !cam2 && !p2) {
    camera (0.0+cX, -0.5-cY, 23.5+cZ, 20.0, 10.0, -1.0, 0.0, 1.0, 0.0);
    //println(cY + ", " + cZ);
  } else if(cam2 && c2Y >=-5) {
    camera (25.0, 0-c2Y, 0, 0.0, 10.0-c2Y, -1.0, 0.0, 1.0, 0.0);// modify eyeY and refY
    c2Y += .15;
  } else if(!cam1 && !p1 && !cam2 && p2) {
    camera (25.0, 0-c2Y, 0, 0.0, 10.0-c2Y, -1.0, 0.0, 1.0, 0.0);
  } else if(cam3) {
    camera (-5, -20, 25, 20.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  } else if(cam4) {
    //camera (0.0+cX + 5, -0.5-cY, 23.5+cZ+5, 20.0, 0.0, -1.0, 0.0, 1.0, 0.0);
    camera (-5, -30, 75, 10.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  } else if(cam5) {
    //camera (-5, -30, 75, 10.0, 0.0, -1.0, 0.0, 1.0, 0.0); //or
    camera (0.0, -90, 125, 20.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  } else if(cam6) {
    camera (-5.0, 0, 1, 20.0, 10.0, -1.0, 0.0, 1.0, 0.0);
  }
}

void capture() {
  if(sX >= 1.15 || sX <= 0.9) {
      xi = -xi;
    }
    
  if(sY >= 1.15 || sY <= 0.9) {
    yi = -yi;
  }
  pushMatrix();
    
  fill (255, 255, 255);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (50, 50, 50);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (10.0);
  
  scale(sX+=xi, sY+=yi,1);
  translate(-12,-5,0);
  rotate(.45,0.0,0.0,1.0);
  rotate(7.87,0.0,1.0,0.0);
  rotate(7.87,1.0,0.0,0.0);
  cylinder(8, .75, 32, 16);
  popMatrix();

}

void minimize() {
  if(s>0) {
    s-= 0.05;
  }
}

void cylinder(float topRadius, float bottomRadius, float tall, int sides) {
  float angle = 0;
  float angleIncrement = TWO_PI / sides;
  beginShape(QUAD_STRIP);
  for (int i = 0; i < sides + 1; ++i) {
    vertex(topRadius*cos(angle), 0, topRadius*sin(angle));
    vertex(bottomRadius*cos(angle), tall, bottomRadius*sin(angle));
    angle += angleIncrement;
  }
  endShape();
  
  // If it is not a cone, draw the circular top cap
  if (topRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);
    
    // Center point
    vertex(0, 0, 0);
    for (int i = 0; i < sides + 1; i++) {
      vertex(topRadius * cos(angle), 0, topRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }

  // If it is not a cone, draw the circular bottom cap
  if (bottomRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);

    // Center point
    vertex(0, tall, 0);
    for (int i = 0; i < sides + 1; i++) {
      vertex(bottomRadius * cos(angle), tall, bottomRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }
}