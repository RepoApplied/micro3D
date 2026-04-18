

module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}


espesor = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

esp = 5.4;
    
grosor = 15;
    

union(){
// corregir dimensiones

translate([0,0,espesor]) union(){

translate([0,0,-espesor]) difference() {cube([48,39,2*espesor]);
//translate([16.5,12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
};


//translate([0,0,-5]) difference() {cube([48,39,espesor]);
//translate([16.5,12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
//};

difference(){translate([0,0,espesor]) cube([espesor,36.5,43]);
translate([0,39-10-2.5,2.5+43-30]) cube([2.5,10,30]);};

translate([48-2.5,0,espesor]) cube([espesor,39,43]);
//translate([0,39-2.5,espesor]) cube([48,espesor,13]);


translate([2.5,2.5,2.5]) rotate(a = +90,v=[1,0,0]) difference(){cube([43,43,espesor]);
translate([5.5,5.5,0]) cylinder(h = espesor, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([43-5.5,5.5,0]) cylinder(h = espesor, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([5.5,43-5.5,0]) cylinder(h = espesor, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([43-5.5,43-5.5,0]) cylinder(h = espesor, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);   
translate([43/2,43/2,0]) cylinder(h = espesor, r1 = radio_big, r2 = radio_big, $fn=100);   
translate([43/2-radio_big,43/2,0])cube([23,43/2,espesor]);    };

//agregar soporte de guias

difference(){translate([0,-10,-2.55]) cube([12,3,45.5/2-2.5]);
translate([5.5+2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
};
difference(){translate([48-12,-10,-2.5]) cube([12,3,45.5/2-2.5]);
translate([48-5.5-2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
};

translate([0,-10,-2.5]) cube([12,10,1]) ;
translate([48-12,-10,-2.5]) cube([12,10,1]) ;
};



////////////////////////////

translate([0,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([38,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([(48-10)/2,-10,0]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};


translate([0,39,0]) rotate(a=90,v=[1,0,0]) union(){translate([0,0,-espesor]) difference() {cube([48,39+9,2*espesor]);
translate([16.5,12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
translate([48-16.5,12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
translate([16.5,39-12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
translate([48-16.5,39-12,0]) cylinder(h = 2*espesor, r1 = 5, r2 = 5, $fn=100);
};
translate([0,0,-5]) difference() {cube([48,39+9,espesor]);
translate([16.5,12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
translate([48-16.5,12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
translate([16.5,39-12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
translate([48-16.5,39-12,0]) cylinder(h = espesor, r1 = 2.5, r2 = 2.5, $fn=100);
};};

///// corregir el tamaño
///// agregar base pequeña para

///////////////////////////////////

//
//translate([0,-50,0]) cube([19,10,10]);
//translate([+29,-50,0]) cube([19,10,10]);
//translate([0,-50,10]) cube([48,10,10-5.75+1.5]);
//translate([0,-50,15.75]) cube([16.5,10,4.5]);
//translate([31.5,-50,15.75]) cube([16.5,10,4.5]);
//
//
//translate([0,-40,0]) union(){
//    
//translate([0,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
//translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
//};
//translate([38,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
//translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
//};
//translate([(48-10)/2,-10,0]) difference(){cube([10,10,10]);
//translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.25, r2 = 2.25, $fn = 100);
//};
//translate([0,+3-(3+esp+3),-2.5]) union(){difference(){
//translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
//    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
//    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
//};
//
//difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
//translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
//difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
//translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
//};};
//
};

