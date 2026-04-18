

exterior_x = 30+8;
exterior_y = 30+8;
dx = 10;
dy = 10;

///rint = 22.6/2;

rint = 0;
rext = 26.6/2;


distancia_cajas1 = 50+4;
distancia_cajas2 = 50+4+90;

rinterior = 22.6/2;
rexterior = 26.6/2;

//caja 1



translate([2,2,0]){
    
rotate(a = [90,0,0]) difference(){union(){cube([exterior_x,exterior_y,2]);
    translate([(exterior_x -30)/2,0,2]) cube([30,38,0]);
};
translate([exterior_x/2,exterior_y/2,0]) cylinder(h = 4, r1 = 11, r2 = 11, $fn=1000);
};

translate([0, exterior_y,0]) rotate(a = [90,0,0]) difference(){union(){cube([exterior_x,exterior_y,2]);
    translate([(exterior_x -30)/2,0,2]) cube([30,38,0]);
};
translate([exterior_x/2,exterior_y/2,0]) cylinder(h = 4, r1 = 10.5, r2 = 10.5, $fn=1000);
};


        
translate([exterior_x,0,0]) rotate(a = [0,-90,0]) difference(){
cube([exterior_x,exterior_y,2]);
translate([exterior_x/2,exterior_y/2,-1]) cylinder(h = 5, r1 = 9, r2 = 9, $fn=1000);
};

//translate([exterior_x,0,0]) rotate(a = [0,-90,0]) translate([exterior_x/2,exterior_y/2,-1]) cylinder(h = 5, r1 = 8, r2 = 8, $fn=1000);

// translate([40,38/2,38/2]) rotate(a = [0,90,0]) cylinder(h = 5, r1 = 8, r2 = 8, $fn=1000);

//////////////////

translate([40-2,38/2,38/2]) 

difference(){
translate([0,-15,-15])cube([65,30,30]);
translate([-5,-16,0])cube([95,32,32]);
translate([2,0,0])rotate(a=[0,90,0]) cylinder(h = 12, r1 = 26/2, r2 = 26/2, $fn=1000);
rotate(a=[0,90,0]) cylinder(h = 2, r1 = 22/2, r2 = 22/2, $fn=1000);
translate([2+12,0,0])rotate(a=[0,90,0]) cylinder(h = 30, r1 = 22/2, r2 = 22/2, $fn=1000);
translate([8,-6,-6]) cube([90,10.5,10.5]);

};
//difference(){
//translate([0,-10,-10])cube([50,20,20]);
//translate([-5,-12,0])cube([70,25,25]);
//translate([2,0,0])rotate(a=[0,90,0]) cylinder(h = 4, r1 = 13/2, r2 = 13/2, $fn=1000);
//rotate(a=[0,90,0]) cylinder(h = 2, r1 = 13/2-1.5, r2 = 13/2-1.5, $fn=1000);
//translate([6,0,0])rotate(a=[0,90,0]) cylinder(h = 2, r1 = 13/2-1.5, r2 = 13/2-1.5, $fn=1000);
//translate([8,-6,-6]) cube([50,12,12]);
//translate([8,-8-3,0]) translate([0,-1,-10])  cube([50,5,12]);   
//translate([8,8,0]) translate([0,-1,-10])  cube([50,5,12]);   
//
//};






/////////////////////
//translate([40-2,38/2-7,0]) cube([50,14,10]);
//translate([40-2,38/2-10,0]) cube([8,20,10]);


rotate(a = [0,-90,0]) cube([exterior_x,exterior_y,2]);
cube([exterior_x,exterior_y,2]);

//translate([0, exterior_y,0]) rotate(a = [90,0,0]) cube([exterior_x,exterior_y,2]);
xy = 2;

translate([-xy,-xy,0]) cube([xy,xy,exterior_x]);

difference(){
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,45])  translate([-44.25/2,-6.25/2,0]) cube([44.25,6.25,30]);
//translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-31.25/2,-6.25/2,0]) cube([31.25,6.25,30]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,45])  translate([-36/2,-3.25/2,6]) cube([36,3.25,26]);
translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,45])  translate([-32/2,-6.25/2,6]) cube([32,6.25,26]);

//translate([exterior_x/2,exterior_y/2,0]) rotate(a = [0,0,-45])  translate([-35.5/2,-3.25/2,0]) cube([35.5,3.25,30]);
};

};

//////////////////////////////////////////////////////////////

//25mm de diametro

// xz

translate([0,40,0]){
//    difference(){translate([0,-2,0])cube([40,2,38]);
//    translate([40/2,1,38/2]) rotate([90,0,0])cylinder(h = 4, r1 = 10.5, r2 = 10.5, $fn=1000);
//    };
    difference(){translate([0,4,0])cube([40,2,38]);
    translate([40/2+1,8,38/2]) rotate([90,0,0]) cylinder(h = 8, r1 = 10.5, r2 = 10.5, $fn=1000);
    };
    difference(){
    translate([0,0,0]) cube([40,4,38]);
    translate([40/2+1,4,38/2]) rotate([90,0,0]) cylinder(h = 8, r1 = 13.5, r2 = 13.5, $fn=1000);
    translate([15/2,0,20]) cube([27,4,20]);
    };   
    
};

