//method that draws an instance of a pokeTree
void pokeTree() {
  //stump
  pushMatrix();
  
  fill (98, 45, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (98, 45, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -25, 0);
  cylinder(1, 2, 40, 16);
  popMatrix();
  
  //tree layers
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -30, 0);
  cylinder(0, 23, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -35, 0);
  cylinder(0, 21, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -40, 0);
  cylinder(0, 19, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -45, 0);
  cylinder(0, 17, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -50, 0);
  cylinder(0, 15, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -55, 0);
  cylinder(0, 13, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -60, 0);
  cylinder(0, 11, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -65, 0);
  cylinder(0, 9, 20, 10);
  popMatrix();
  
  pushMatrix();
  
  fill (18, 87, 0);       // "fill" sets both diffuse and ambient color (yuck!)
  ambient (18, 87, 0);      // set ambient color
  specular (150, 150, 150);   // set specular color
  shininess (35.0);
  
  translate(0, -70, 0);
  cylinder(0, 7, 20, 10);
  popMatrix();
  
  //pokeBalls on tree
  pushMatrix();
  translate(-4,-52,0);
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(7.35, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
  
  pushMatrix();
  translate(10,-40,0);
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(8.35, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
  
  pushMatrix();
  translate(-12,-30,7);
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(6.35, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
  
  pushMatrix();
  translate(16,-22,7);
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(7.25, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
  
  pushMatrix();
  translate(-10,-14,16);
  rotate(.15, 0.0, 0.0, 1.0);
  rotate(7.25, 0.0, 1.0, 0.0);
  shape(Pokeball);
  popMatrix();
}