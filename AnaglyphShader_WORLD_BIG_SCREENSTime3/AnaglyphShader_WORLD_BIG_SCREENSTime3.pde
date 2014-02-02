// 3D Street View # Wall Projection
// developed by Edwin Reed Sanchez

// Google Street View API

// Optimised anaglyph shader by John Einselen
// http://iaian7.com/quartz/AnaglyphCompositing

// Simple anaglyph shader by r3dux
// http://r3dux.org/2011/05/anaglyphic-3d-in-glsl/

// Anaglyph libraries adapted for Processing by Raphaël de Courville 



import com.francisli.processing.http.*;
//import ddf.minim.*;
int savedTime;
int totalTime = 25000;

//Minim minim;
//AudioPlayer songChicago;

Image paris;
Image paris1;
Image paris2;

Image chicago;
Image chicago1;
Image chicago2;

Image himilayas;
Image himilayas1;
Image himilayas2;

Image washSq;
Image washSq1;
Image washSq2;

Image mex;
Image mex1;
Image mex2;




void setup() {


  size(3072, 768, P2D);

 // minim = new Minim(this);

  paris = new Image();
  paris1 = new Image();
  paris2 = new Image();

  chicago = new Image();
  chicago1 = new Image();
  chicago2 = new Image();
  // this loads mysong.wav from the data folder
//  songChicago = minim.loadFile("SweetChicago2.wav");

  himilayas = new Image();
  himilayas1 = new Image();
  himilayas2 = new Image();

  washSq = new Image();
  washSq1 = new Image();
  washSq2 = new Image();

  mex = new Image();
  mex1 = new Image();
  mex2 = new Image();

  savedTime = millis();
}




void draw() {
  //background(100, 100, 100);


  int passedTime = millis() - savedTime;

  // Has five seconds passed?
  if (passedTime > totalTime-20000) {
    //Paris draw 

    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture
    paris.newPosition(48.856851, 2.2967610000000604, -135, 90, 0, 15);
    paris.update();
    paris.display(0, 0, 1024, 768);

    paris1.newPosition(48.856851, 2.2967610000000604, -135 + 185, 90, 0, 15);
    paris1.update();
    paris1.display((width/3)*2, 0, 1024, 768);

    paris2.newPosition(48.856851, 2.2967610000000604, -135 + 90, 90, 0, 15);
    paris2.update();
    paris2.display((width/3), 0, 1024, 768);
  }

  // Chicago draw


  if (passedTime > totalTime-15000) {
    //songChicago.play();

    //place inital cordinatres
    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture


    chicago1.newPosition(41.865186, -87.61734899999999, 33.574697640840604 - 100, 90, 20, 23.390731247682115) ;
    chicago1.update();
    chicago1.display(0, 0, 1024, 768);

    chicago2.newPosition(41.865186, -87.61734899999999, 33.574697640840604 + 82, 90, 20, 23.390731247682115);
    chicago2.update();
    chicago2.display((width/3)*2, 0, 1024, 768);

    chicago.newPosition(41.865186, -87.61734899999999, 33.574697640840604, 90, 0, 23.390731247682115);
    chicago.update();
    chicago.display((width/3), 0, 1024, 768);
  }


  //  Himilayas

  if (passedTime > totalTime-10000) {
//    songChicago.pause();
//    songChicago.rewind();
    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture

//    himilayas1.newPosition(27.994511, 86.82838100000004, 84.13086647376609 - 85, 78, 0, 14.106209486761976) ;
//    himilayas1.update();
//    himilayas1.display(0, 0, 1024, 768);
//
//    himilayas2.newPosition(27.994511, 86.82838100000004, 84.13086647376609 + 82, 90, 0, 14.106209486761976);
//    himilayas2.update();
//    himilayas2.display((width/3)*2, 0, 1024, 768);
//
//    himilayas.newPosition(27.994511, 86.82838100000004, 84.13086647376609, 90, 0, 19.106209486761976);
//    himilayas.update();
//    himilayas.display((width/3), 0, 1024, 768);
    
    himilayas1.newPosition(27.994511, 86.82838100000004, (84.13086647376609 - 85), 78, 0, 14.106209486761976) ;
    himilayas1.update();
    himilayas1.display(0, 0, 1024, 768);

    himilayas2.newPosition(27.994511, 86.82838100000004, (84.13086647376609 + 82), 90, 0, 14.106209486761976);
    himilayas2.update();
    himilayas2.display((width/3)*2, 0, 1024, 768);

    himilayas.newPosition(27.994511, 86.82838100000004, 84.13086647376609, 90, 0, 19.106209486761976);
    himilayas.update();
    himilayas.display((width/3), 0, 1024, 768);
    
  }

if (passedTime > totalTime-5000) {

    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture
    mex1.newPosition(20.683066, -88.56817899999999, -105.64939021246366 -90, 90, 0, 18.653354524752537) ;
    mex1.update();
    mex1.display(0, 0, 1024, 768);

    mex2.newPosition(20.683066, -88.56817899999999, -105.64939021246366 + 84, 90, 0, 18.653354524752537);
    mex2.update();
    mex2.display((width/3)*2, 0, 1024, 768);

    mex.newPosition(20.683066, -88.56817899999999, -105.64939021246366, 90, 0, 18.653354524752537);
    mex.update();
    mex.display((width/3), 0, 1024, 768);
  }



  //Washington Square Park
  if (passedTime > totalTime) {

    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture
    washSq1.newPosition(40.731317, -73.99683800000003, -109.12652756747369 -90, 90, 30, 15.662629440133916) ;
    washSq1.update();
    washSq1.display(0, 0, 1024, 768);

    washSq2.newPosition(40.731317, -73.99683800000003, -109.12652756747369 + 84, 90, 0, 15.662629440133916);
    washSq2.update();
    washSq2.display((width/3)*2, 0, 1024, 768);

    washSq.newPosition(40.7313, -73.99683800000003, -109.12652756747369, 90, 0, 15.662629440133916);
    washSq.update();
    washSq.display((width/3), 0, 1024, 768);
    
    savedTime = millis();
  }



  //Bridge - Williamsburg
  if (key =='b' || key == 'B') {

    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture
    washSq1.newPosition(40.731317, -73.99683800000003, -109.12652756747369 -90, 90, 30, 15.662629440133916) ;
    washSq1.update();
    washSq1.display(0, 0, 1024, 768);

    washSq2.newPosition(40.731317, -73.99683800000003, -109.12652756747369 + 84, 90, 0, 15.662629440133916);
    washSq2.update();
    washSq2.display((width/3)*2, 0, 1024, 768);

    washSq.newPosition(40.7313, -73.99683800000003, -109.12652756747369, 90, 0, 15.662629440133916);
    washSq.update();
    washSq.display((width/3), 0, 1024, 768);
  }



  //Bridge - Williamsburg
  if (key =='m' || key == 'M') {

    //new position( Lat, Long, Heading, FOV, Zoom, Pitch) fine tune for each picture
    washSq1.newPosition(20.683066, -88.56817899999999, -105.64939021246366 -90, 90, 0, 18.653354524752537) ;
    washSq1.update();
    washSq1.display(0, 0, 1024, 768);

    washSq2.newPosition(20.683066, -88.56817899999999, -105.64939021246366 + 84, 90, 0, 18.653354524752537);
    washSq2.update();
    washSq2.display((width/3)*2, 0, 1024, 768);

    washSq.newPosition(20.683066, -88.56817899999999, -105.64939021246366, 90, 0, 18.653354524752537);
    washSq.update();
    washSq.display((width/3), 0, 1024, 768);
  }
}

