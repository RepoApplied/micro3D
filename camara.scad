

exterior_x = 30+8;
exterior_y = 30+8;
dx = 10;
dy = 10;

///rint = 22.6/2;

rint = 0;
rext = 26.6/2;

rad = 3.5/2;

distancia_cajas1 = 50+4;
distancia_cajas2 = 50+4+90-30;

rinterior = 22.6/2;
rexterior = 26.6/2;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


ALTURA_CAMARA = 90;
translate([0,-ALTURA_CAMARA,0]) translate([-exterior_x/2-distancia_cajas1+2,2-30,exterior_y/2]) rotate([90,0,0]) translate([0,0,distancia_cajas2-40]) difference(){cylinder(h = 40, r1 = rexterior, r2 = rexterior, $fn=1000);cylinder(h = distancia_cajas2, r1 = rinterior, r2 = rinterior, $fn=1000);}

translate([0,-52-5-ALTURA_CAMARA,0]) difference(){
// tamaño nuevo del tubo
    
union(){translate([-91,-10-40,0]) cube([38,5,38]);
translate([-91,-10-40-5-10,0]) cube([38+53,5,38]);};

translate([-exterior_x/2-distancia_cajas1+2,2,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2,2-5-10 ,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);

translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2-15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2+15,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);
translate([-exterior_x/2-distancia_cajas1+2-17,2,exterior_y/2+15]) rotate([90,0,0]) cylinder(h = 200, r1 = rad, r2 = rad, $fn=1000);

translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+80.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=150,r1=2,r2=2,$fn=100);
translate([0,+52+3,0]) translate([0,-25+30,0]) translate([-88+0.75+60.5,2-107-30-4,(exterior_y-1.5)/2]) translate([0, exterior_y,0]) rotate(a=90, v=[1,0,0]) cylinder(h=150,r1=2,r2=2,$fn=100);

translate([-91,-10-40-5-10,0]) cube([38+53,7,5]);
translate([-91,-10-40-5-10,38-5]) cube([38+53,7,5]);
};

// ACORDARSE DE CHEQUEAR  EL ESPESOR DONDE VA LA CAMARA

exterior_x2 = 30+4-1.5;
exterior_y2 = 31+4;

placa_x = exterior_x2-8;
placa_y = exterior_y2-8;

ztotal = 10+10;

translate([0,-52-5-ALTURA_CAMARA-35,0]) difference(){   
union(){
    translate([-91-2,-10-40,-2]) cube([38+4,2,38+4]);
    translate([-91-2,-10-40-16,-2]) cube([38+4,16,2]);
    translate([-91-2,-10-40-16,-2]) cube([2,16,38+4]);
    translate([-91-2+38+2,-10-40-16,-2]) cube([2,16,38+4]);

    translate([-91-2-10,-10-40-16,-2]) cube([10,2,38+4]);
    translate([-91-2+38+4,-10-40-16,-2]) cube([10,2,38+4]);
    translate([-91-2-10,-10-40-16,-2-10]) cube([38+4+20,2,10]);

    translate([-91-2-10,-10-40-8-16,-2-10]) cube([38+4+10+10,8,2]);
    translate([-91-2-10,-10-40-8-16,-2-10]) cube([2,8,38+4+10]);
    translate([-91-2-10+38+4+10+10-2,-10-40-8-16,-2-10]) cube([2,8,38+4+10]);



};
translate([-exterior_x/2-distancia_cajas1+2,2-5-10 ,exterior_y/2]) rotate([90,0,0]) cylinder(h = distancia_cajas1, r1 = rexterior, r2 = rexterior, $fn=1000);
};



