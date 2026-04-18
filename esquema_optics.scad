

exterior_x = 30+8;
exterior_y = 30+8;
dx = 10;
dy = 10;

rad = 3.5/2;
///rint = 22.6/2;

rint = 0;
rext = 26.6/2;


distancia_cajas1 = 50+4;
distancia_cajas2 = 50+4+90-30;

rinterior = 22.6/2;
rexterior = 26.6/2;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//caja 1

translate([2,2,0]){
rotate(a = [90,0,0]) difference(){

union(){cube([exterior_x,exterior_y,2]);
    translate([(exterior_x -30)/2,0,2]) cube([30,38,0]);
};
translate([exterior_x/2,exterior_y/2,0]) cylinder(h = 4, r1 = 11, r2 = 11, $fn=1000);
};
        
rotate(a = [0,-90,0]) difference(){
cube([exterior_x,exterior_y,2]);
translate([exterior_x/2,exterior_y/2-2,0]) cylinder(h = 2, r1 = rext, r2 = rext, $fn=1000);
};

cube([exterior_x,exterior_y,2]);
translate([exterior_x,0,0]) rotate(a = [0,-90,0]) cube([exterior_x,exterior_y,2]);
translate([0, exterior_y,0]) rotate(a = [90,0,0]) cube([exterior_x,exterior_y,2]);
xy = 2;

translate([-xy,-xy,0]) cube([xy,xy,exterior_x]);

difference(){
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-44.25/2,-6.25/2,0]) cube([44.25,6.25,30]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-31.25/2,-6.25/2,0]) cube([31.25,6.25,30]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-35.5/2,-3.25/2,0]) cube([35.5,3.25,30]);
};};


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//tubo 1

//translate([-distancia_cajas1+2,exterior_y/2,exterior_x/2]) rotate([0,90,0]) difference(){cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas1, r1 = rinterior, r2 = rinterior, $fn=1000);}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// caja 2
translate([-distancia_cajas1+2+2,0,0]) translate([-2,2,0]) rotate([0,0,90]){
rotate(a = [90,0,0]) difference(){
cube([exterior_x,exterior_y,2]);
translate([exterior_x/2-2,exterior_y/2,0]) cylinder(h = 2, r1 = rext, r2 = rext, $fn=1000);
};
        
        

rotate(a = [0,-90,0]) difference(){
cube([exterior_x,exterior_y,2]);
translate([exterior_x/2,exterior_y/2,0]) cylinder(h = 2, r1 = rext, r2 = rext, $fn=1000);
};

cube([exterior_x,exterior_y,2]);


translate([exterior_x,0,0]) rotate(a = [0,-90,0]) cube([exterior_x,exterior_y,2]);

translate([0, exterior_y,0]) rotate(a = [90,0,0]) cube([exterior_x,exterior_y,2]);

xy = 2;

translate([-xy,-xy,0]) cube([xy,xy,exterior_x]);



difference(){
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-44.25/2,-6.25/2,0]) cube([44.25,6.25,30]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-31.25/2,-6.25/2,0]) cube([31.25,6.25,30]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-35.5/2,-3.25/2,0]) cube([35.5,3.25,30]);
};};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//tubo 2

translate([-exterior_x/2-distancia_cajas1+2,2-30,exterior_y/2]) rotate([90,0,0]) difference(){cylinder(h = distancia_cajas2-40, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas2, r1 = rinterior, r2 = rinterior, $fn=1000);}

translate([0,-52,0]) difference(){     
translate([-91,-10-40,0]) cube([38+53,3,38]);
translate([-exterior_x/2-distancia_cajas1+2,2,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rad, r2 = rad, $fn=1000);

translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+80.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=15,r1=2,r2=2,$fn=100);
translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+60.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=15,r1=2,r2=2,$fn=100);

};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// Soporte tubo 1

// translate([-distancia_cajas1+2,exterior_y/2-2,0]) cube([distancia_cajas1,4,7 ]);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Soporte tubo 2

// translate([-exterior_x/2-distancia_cajas1,2-distancia_cajas1,0]) cube([4,distancia_cajas1,7 ]);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// camara

//ALTURA_CAMARA = 90;
//translate([0,-ALTURA_CAMARA,0]) translate([-exterior_x/2-distancia_cajas1+2,2-30,exterior_y/2]) rotate([90,0,0]) translate([0,0,distancia_cajas2-40]) difference(){cylinder(h = 40, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas2, r1 = rinterior, r2 = rinterior, $fn=1000);}
//
//translate([0,-52-5-ALTURA_CAMARA,0]) difference(){
//// tamaño nuevo del tubo
//    
//union(){translate([-91,-10-40,0]) cube([38,5,38]);
//translate([-91,-10-40-5,0]) cube([38+53,5,38]);};
//
//translate([-exterior_x/2-distancia_cajas1+2,2,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);
//translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
//translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
//translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
//translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
//
//translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+80.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=150,r1=2,r2=2,$fn=100);
//translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+60.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=150,r1=2,r2=2,$fn=100);
//
//};
//
//// ACORDARSE DE CHEQUEAR  EL ESPESOR DONDE VA LA CAMARA
//
//exterior_x2 = 30+4-1.5;
//exterior_y2 = 31+4;
//
//placa_x = exterior_x2-8;
//placa_y = exterior_y2-8;
//
//ztotal = 10+10;
//
//translate([0,-90-ALTURA_CAMARA,0]) union(){
//difference(){
//union(){
//difference(){
//union(){
//translate([-87.25,-50-34,35+1.5]) rotate([-90,0,0]) translate([0,0,12]) 
//union(){
//    union(){
//        difference(){
//        cube([exterior_x2,exterior_y2,ztotal]);
//        translate([4,4,0]) cube([placa_x,placa_y,ztotal]);
//        translate([4,0,0]) cube([placa_x,placa_y,ztotal]);
//        translate([0,-2,2-3]) cube([exterior_x2,exterior_y2-2,5]);
//        translate([0,-4,2-3]) cube([exterior_x2,exterior_y2-2,5]);};
//        difference(){
//        translate([0,-0.5,ztotal]) cube([exterior_x2,exterior_y2+2,2]);
//        translate([exterior_x2/2,exterior_y2/2,ztotal]) cylinder(h = 2, r1 = rinterior, r2 = rinterior, $fn=1000);};};
//
//ztotal2 = 10;
//dz = -2;
//    translate([32.5,0,0]) rotate([180,0,180]) union(){
//    difference(){
//        cube([exterior_x2,exterior_y2,ztotal2-dz]);
//        translate([4,4,dz]) cube([placa_x,placa_y,ztotal2-2*dz]);
//        translate([4,0,dz]) cube([placa_x,placa_y,ztotal2-2*dz]);};
//        translate([0,0,ztotal2-dz]) cube([exterior_x2,exterior_y2,2]);
//};
//};
//
//
//translate([-88+0.75,-86,0]) cube([exterior_x2,exterior_y2+1,1.5]);
//};
//
//translate([-88+0.75+(exterior_x-5.5)/2-2.5,2-107-30+11+10,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a = [90,0,0]) cube([5,(exterior_y-1.5),30]);
//};
//
//translate([-55,-75,0]) cube([6,10,37]);
//translate([-91-2,-75,0]) cube([6,10,37]);
//};
//
//
//translate([-90,-72,1]) cube([38,4,38]);
//translate([-90,-72,-0.5]) cube([38,4,38]);
//
//};
//
//da= 4.5;
//
//translate([-91.75+da,-50,0]) cube([37-da,4,2]);
//
//};

////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

// SOPORTES GUIAS


////////////////////////////////////////////////////////////////////////////////////


// ETL




difference(){union(){
translate([-90,-30,0]) cube([2,30,38]);
translate([-52,-30,0]) cube([2,30,38]);
translate([-90,-30,0]) cube([38,30,2]);
translate([-90,-30,0]) cube([38,2,38]);
};
translate([-exterior_x/2-distancia_cajas1+2,2-30+5,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas2, r1 = rinterior, r2 = rinterior, $fn=1000);
};


// CAJA REMOVIBLE

translate([58,41-2.5,-4]) rotate(a = [0,0,90])  rotate(a = [0,-90,0]) union(){
difference(){
union(){translate([0,60-2.5,-2.5]){
    
    cube([40+3,46+3,2]);
    cube([40+3,2,38+3]);
    translate([0,0,38+3])    cube([40+3,46+3,2]);
    translate([0,46+3,0])    cube([40+3,2,38+3+2]);

};};
translate([4,0,0]) rotate(a = [90,0,0]) translate([exterior_x/2,exterior_y/2,-150]) cylinder(h = 100, r1 = 11, r2 = 11, $fn=1000);
};
translate([2,60,0]) translate([-2,-2,-0.5]) cube([2,50,2]);
translate([2,60,37]) translate([-2,-2,-0.5]) cube([2,50,2]);
};



/////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////////


//// MOTOR Z Y SOPORTE


module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}


espesor = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

esp = 5.4;
    
grosor = 15;
    

translate([0,30,0]) union(){
translate([-91,40,-5]) rotate(a = -90, v = [0,1,0]) union(){

translate([0,-40,0])union(){
translate([0,-50,0]) cube([19,10,10]);
translate([+29,-50,0]) cube([19,10,10]);
translate([0,-50,10]) cube([48,10,10-5.75+1.5]);
translate([0,-50,15.75]) cube([16.5,10,4.5]);
translate([31.5,-50,15.75]) cube([16.5,10,4.5]);


translate([0,-40,0]) union(){
    
translate([0,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([38,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([(48-10)/2,-10,0]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([0,+3-(3+esp+3),-2.5]) union(){difference(){
translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
};

difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
};};

};};


translate([-91,-10-40-65,-5]) cube([4,10,48]);

translate([-91,-10-40,-5]) cube([2,10,48]);

////////////////////////////////////////////////////////////////////////

translate([0,-65,0]) difference(){translate([-91,-10-40,0]) cube([38,10,38]);
translate([-exterior_x/2-distancia_cajas1+2,2,exterior_y/2]) rotate([90,0,0]) difference(){cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas1, r1 = 0, r2 = 0, $fn=1000);}
};



//difference(){ translate([-55,-75,0]) cube([4,10,38]);;
//translate([-exterior_x/2-distancia_cajas1+2,2,exterior_y/2]) rotate([90,0,0]) difference(){cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas1, r1 = rinterior, r2 = rinterior, $fn=1000);}
//};

translate([-91,-25-40,-5]) rotate(a = -90, v = [0,1,0]) union(){
translate([0,-50,0]) cube([19,10,10]);
translate([+29,-50,0]) cube([19,10,10]);
translate([0,-50,10]) cube([48,10,10-5.75+1.5]);
translate([0,-50,15.75]) cube([16.5,10,4.5]);
translate([31.5,-50,15.75]) cube([16.5,10,4.5]);


translate([0,-40,0]) union(){
    
translate([0,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([38,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([(48-10)/2,-10,0]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
};
translate([0,+3-(3+esp+3),-2.5]) union(){difference(){
translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
};

difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
};};

};

};




