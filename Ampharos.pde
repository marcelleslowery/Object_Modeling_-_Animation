//class that draws the Pokemon Ampharos.
import processing.opengl.*;

class Ampharos {
  
  float larmmove = 0.0;
  float larmi = 0.05;
  float rarmmove = 0.0;
  float rarmi = -0.05;
  float llegmove = 0.0;
  float llegi = 0.05;
  float rlegmove = 0.0;
  float rlegi = -0.05;
  float tailmove = 0.0;
  float taili = 0.05;
  
  public Ampharos() { 
  }
  
  public void drawStillPokemon() {
    drawHead();
    drawLeftEar();
    drawRightEar();
    drawNeck();
    drawBody();
    drawLeftArm();
    drawRightArm();
    drawLeftLeg();
    drawRightLeg();
    drawTail();
    
    llegmove = 0.0;
    llegi = 0.05;
    rlegmove = 0.0;
    rlegi = -0.05;
  }
  
  public void drawMovingPokemon() {
    drawHead();
    drawLeftEar();
    drawRightEar();
    drawNeck();
    drawBody();
    drawLeftArm();
    drawRightArm();
    moveLleg();
    moveRleg();
    drawTail();
  }
  
  public void drawKickingPokemon() {
    drawHead();
    drawLeftEar();
    drawRightEar();
    drawNeck();
    drawBody();
    drawLeftArm();
    drawRightArm();
    drawLeftLeg();
    moveRleg();
    drawTail();
  }
  
  //draws the head and face
  void drawHead() {
    //head
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0,-15,2);
    scale(1, 1, 1.5);
    rotate(.45, 1.0, 0.0, 0.0);
    sphere (3);
    popMatrix();
    
    //red bulb (nose)
    pushMatrix();
    
    fill (255, 0, 0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (15.0);
    
    translate(0,-18,3);
    sphere (.5);
    popMatrix();
    
    //left eye
    pushMatrix();
    
    fill (0, 0, 0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (20.0);
    
    translate(1.5,-17,4.5);
    sphere (.5);
    popMatrix();
    
    //right eye
    pushMatrix();
    
    fill (0, 0, 0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (20.0);
    
    translate(-1.5,-17,4.5);
    sphere (.5);
    popMatrix();
  }
  
  //draws left ear
  void drawLeftEar() {
    //left ear
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(3, -18.5, 0);
    rotate(.65, 0.0, 0.0, 1.0);
    cylinder(0.75, 1.5, 3, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (20.0);
    
    translate(4, -19.75, 0);
    rotate(.65, 0.0, 0.0, 1.0);
    cylinder(0.25, 0.75, 2, 16);
    popMatrix();
  }
  
  //draws right ear
  void drawRightEar() {
    //right ear
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(-3, -18.5, 0);
    rotate(-.65, 0.0, 0.0, 1.0);
    cylinder(0.75, 1.5, 5, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (20.0);
    
    translate(-4, -19.75, 0);
    rotate(-.65, 0.0, 0.0, 1.0);
    cylinder(0.25, 0.75, 2, 16);
    popMatrix();
  }
  
  //draws neck
  void drawNeck() {
    //neck
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0, -14, 0);
    cylinder(1.5, 1.5, 3, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (25.0);
    
    translate(0, -11, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0, -10, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (25.0);
    
    translate(0, -9, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0, -8, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (25.0);
    
    translate(0, -7, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
    
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0, -6, 0);
    cylinder(1.5, 1.5, 1, 16);
    popMatrix();
  }
  
  //draws body
  void drawBody() {
    //body
    pushMatrix();
    
    fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
    ambient (50, 50, 50);      // set ambient color
    specular (150, 150, 150);   // set specular color
    shininess (5.0);
    
    translate(0, 1.5, 0);
    scale(1, 1.5, 1);
    sphere (5);
    popMatrix();
  }
  
  //draws left arm
  void drawLeftArm() {
    //waiving
    pushMatrix();
    if(larmmove >= 0.40 || larmmove <= -0.40) {
      larmi = -larmi;
    }
    rotate(larmmove+=larmi,0.0,0.0,1.0);
    
      //left arm
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(4.25, -2.5, 0);
      scale(3, 0.5, 1);
      //rotate(.95, 0.0, 0.0, 1.0);
      sphere (2);
      popMatrix();
    
    popMatrix();
  }
  
  //draws right arm
  void drawRightArm() {
    //waiving
    pushMatrix();
    if(rarmmove >= 0.40 || rarmmove <= -0.40) {
      rarmi = -rarmi;
    }
    rotate(rarmmove+=rarmi,0.0,0.0,1.0);
    
      //right arm
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(-4.25, -2.5, 0);
      scale(3, 0.5, 1);
      rotate(.95, 0.0, 0.0, 1.0);
      sphere (2);
      popMatrix();
      
    popMatrix();
  }
  
  //draws left leg and foot
  void drawLeftLeg() {
    ////animated walking
    //pushMatrix();
    //if(llegmove >= 0.85 || llegmove <= -0.85) {
    //  llegi = -llegi;
    //}
    //rotate(llegmove+=llegi,1.0,0.0,0.0);
    
      //left leg
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(4, 6, 0);
      scale(1, 1.5, 1);
      //rotate(-2,1.0,0.0,0.0);
      sphere (3);
      popMatrix();
      
      //left foot
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(4.25, 11, 2);
      scale(1, 0.5, 2.5);
      sphere (2);
      popMatrix();
 
    //popMatrix();
  }
  
  //draws right leg and foot
  void drawRightLeg() {
    ////animated walking
    //pushMatrix();
    //if(rlegmove >= 0.85 || rlegmove <= -0.85) {
    //  rlegi = -rlegi;
    //}
    //rotate(rlegmove+=rlegi,1.0,0.0,0.0);
    
      //right leg
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(-4, 6, 0);
      scale(1, 1.5, 1);
      rotate(.05, 0.0, 0.0, 1.0);
      sphere (3);
      popMatrix();
      
      //right foot
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(-4.25, 11, 2);
      scale(1, 0.5, 2.5);
      sphere (2);
      popMatrix();
      
    //popMatrix();
  }
  
  //draws tail and lighting bulb
  void drawTail() {
    //wagging
    pushMatrix();
    if(tailmove >= 0.5 || tailmove <= -0.5) {
      taili = -taili;
    }
    rotate(tailmove+=taili,0.0,1.0,0.0);
    
      //tail
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(0,4,-3.25);
      rotate(-2,1.0,0.0,0.0);
      cylinder(2,1.25,4,16);
      popMatrix();
      
      pushMatrix();
      
      fill (0,0,0);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (25.0);
      
      translate(0,2.40,-6.75);
      rotate(-2,1.0,0.0,0.0);
      cylinder(1.25,0.75,4,16);
      popMatrix();
      
      pushMatrix();
      
      fill (255,255,23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(0,.75,-10.35);
      rotate(-2,1.0,0.0,0.0);
      cylinder(.75,0.5,2,16);
      popMatrix();
      
      //tail bulb
      pushMatrix();
      
      fill (255, 0, 0);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (15.0);
      
      translate(0, -0.5, -13);
      sphere (1.5);
      popMatrix();
      
    popMatrix();
  }
  
  void moveLleg() {
    //animated walking
    pushMatrix();
    if(llegmove >= 0.85 || llegmove <= -0.85) {
      llegi = -llegi;
    }
    rotate(llegmove+=llegi,1.0,0.0,0.0);
    
      //left leg
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(4, 6, 0);
      scale(1, 1.5, 1);
      //rotate(-2,1.0,0.0,0.0);
      sphere (3);
      popMatrix();
      
      //left foot
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(4.25, 11, 2);
      scale(1, 0.5, 2.5);
      sphere (2);
      popMatrix();
 
    popMatrix();
    
  }
  
  void moveRleg() {
    //animated walking
    pushMatrix();
    if(rlegmove >= 0.85 || rlegmove <= -0.85) {
      rlegi = -rlegi;
    }
    rotate(rlegmove+=rlegi,1.0,0.0,0.0);
    
      //right leg
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(-4, 6, 0);
      scale(1, 1.5, 1);
      rotate(.05, 0.0, 0.0, 1.0);
      sphere (3);
      popMatrix();
      
      //right foot
      pushMatrix();
      
      fill (255, 255, 23);       // "fill" sets both diffuse and ambient color (yuck!)
      ambient (50, 50, 50);      // set ambient color
      specular (150, 150, 150);   // set specular color
      shininess (5.0);
      
      translate(-4.25, 11, 2);
      scale(1, 0.5, 2.5);
      sphere (2);
      popMatrix();
      
    popMatrix();
  }
}