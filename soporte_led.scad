

exterior_x = 7+8;
exterior_y = 7+8;
dx = 10;
dy = 10;

///rint = 22.6/2;

rint = 0;
rext = 26.6/2;


distancia_cajas1 = 50+4;
distancia_cajas2 = 50+4+90;

rinterior = 22.6/2;
rexterior = 26.6/2;


//translate([exterior_x,0,0]) rotate(a = [0,-90,0]) difference(){
//cube([exterior_x,exterior_y,2]);
//translate([exterior_x/2,exterior_y/2,0]) cylinder(h = 2, r1 = 10.5, r2 = 10.5, $fn=1000);
//};




///////////////////////////////////////////////

difference(){
translate([0,-5,-5])cube([15,10,10]);
//translate([-5,-5,0])cube([70,15,15]);

translate([0,0,0])rotate(a=[0,90,0]) cylinder(h = 2, r1 = 7/2, r2 = 7/2, $fn=1000);
translate([2,0,0])rotate(a=[0,90,0]) cylinder(h =50, r1 = 6/2, r2 = 6/2, $fn=1000);
};
