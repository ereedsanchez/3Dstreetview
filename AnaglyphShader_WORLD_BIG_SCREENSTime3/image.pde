class Image {

  String urlStrt = "http://maps.googleapis.com/maps/api/streetview?size=640x640&location=";
  String ApiKey= "AIzaSyC5Ys76CgyTAzQFh_Q2cpCJMh_6YvSPATU";

  // Actuall images

  PImage leftEye, rightEye;
  String urlleft;
  String urlRight;

  // change in Url

  float Lat;
  float Long;
  float Head;
  float FOV;
  float Zoom;
  float Pitch;
  String urlProj0Rexec, urlProj0Lexec;

  //Shaders
  boolean isOptimised = true;

  PShader simple_anaglyph, optimised_anaglyph;
  PShader s;
  boolean isShader = true;


  Float contrast = 1.4; // lets us adjust the apparent colour saturation (based on the contrast between channels) better left between 0.5 and 1.0
  Float deghost = 0.6;  // Amount of deghosting (via channel subtraction)
  Float stereo = 0.0;   // allows for small alignment adjustments to the images

  Image() {
  }


  void newPosition(float tempLat, float tempLong, float tempHead, float tempFOV, float tempZoom, float tempPitch) {

    Lat = tempLat; 
    Long = tempLong;
    Head = tempHead;
    FOV = tempFOV;
    Zoom = tempZoom;
    Pitch = tempPitch;

    urlProj0Rexec = urlStrt + Lat + "," + Long + "&heading=" + (Head+(mouseX * 0.001)) + "&fov=" + FOV + "&pitch=" + Pitch + "&zoom=" + Zoom + "&size=600x600&sensor=false" + "&key=" + ApiKey;
    urlProj0Lexec = urlStrt + Lat + "," + Long + "&heading=" + Head + "&fov=" + FOV + "&pitch=" + Pitch + "&zoom=" + Zoom + "&size=600x600&sensor=false" + "&key=" + ApiKey;
    
  }
  

  void update() { 

    urlleft=urlProj0Lexec ;
    urlRight=urlProj0Rexec;

    leftEye = loadImage(urlleft, "jpg");
    rightEye = loadImage(urlRight, "jpg");
  }

  void display(float x, float y, float w, float h) {

    optimised_anaglyph = loadShader("optimised_anaglyph.glsl");
    simple_anaglyph = loadShader("simple_anaglyph.glsl");
    s = simple_anaglyph;

    if (isOptimised) { 
      s = optimised_anaglyph; 
      s.set("Contrast", contrast);
      s.set("Deghost", deghost);
      s.set("Stereo", stereo);
      s.set("Left", leftEye);
      s.set("Right", rightEye);
    }

if(isShader) 
    shader(s);

    image(rightEye, x, y, w, h);
    image(leftEye, x, y, w, h);  

    resetShader();
  }
 
  }


