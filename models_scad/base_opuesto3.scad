

espesor = 5;
radio_exteriores = 3;
espesor_guia_abajo = 2.5;

//translate([8.5,13,espesor]) difference() {cube([48,39,espesor]);
//translate([16.5,12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//};

difference() {
union(){
translate([0,0,0]) difference() {cube([60,60,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([30,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([50,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,50,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
   };
translate([0,0,espesor])cube([60,60,espesor]);  
    
    

espesor_guia_abajo = 2.5;

//agregar soporte de guias
translate([48,8.5,10]) rotate(a =90,v=[0,0,1]) difference(){
union(){
translate([0,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([38,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([0,0,0]) cube([10,15,45.5/2-5+4.5]);
translate([48-12+2,0,0]) cube([10,15,45.5/2-5+4.5]);

difference(){translate([10,0,0]) cube([28,15,32.25+2-2]);
translate([24,15,45.5/2+4.5])rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 5.2, r2 = 5.2, $fn = 100);
};};

};
};

    translate([10,10,5]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([30,10,5]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([50,10,5]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,30,5]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,50,5]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);

};

//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////


espesor_motor_1 = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

// corregir dimensiones
//
//translate([39+13,8.5,10])  rotate(a = 90, v = [0,0,1]) translate([0,0,5]) union(){
//translate([0,0,-espesor_motor_1]) difference() {cube([48,39,2*espesor_motor_1]);
//translate([16.5,12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
//};
//
//
//translate([0,0,-5]) difference() {cube([48,39,espesor_motor_1]);
//translate([16.5,12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
//};
//
//difference(){translate([0,0,espesor_motor_1]) cube([espesor_motor_1,36.5,43]);
//translate([0,39-10-2.5,2.5+43-30]) cube([2.5,10,30]);};
//
//translate([48-2.5,0,espesor_motor_1]) cube([espesor_motor_1,39,43]);
//translate([0,39-2.5,espesor_motor_1]) cube([48,espesor_motor_1,13]);
//
//
//translate([2.5,2.5,2.5]) rotate(a = +90,v=[1,0,0]) difference(){cube([43,43,espesor_motor_1]);
//translate([5.5,5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
//translate([43-5.5,5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
//translate([5.5,43-5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
//translate([43-5.5,43-5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);   
//translate([43/2,43/2,0]) cylinder(h = espesor_motor_1, r1 = radio_big, r2 = radio_big, $fn=100);   
//translate([43/2-radio_big,43/2,0])cube([23,43/2,espesor_motor_1]);    };
//
//
//
////agregar soporte de guias
//
//
//
//translate([0,-10,45.5/2-5]) difference(){cube([10,10,10]);
//translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
//};
//
//translate([38,-10,45.5/2-5]) difference(){cube([10,10,10]);
//translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
//};
//
//
//difference(){translate([0,-10,-5]) cube([12,3,45.5/2]);
//translate([5.5+2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
//};
//difference(){translate([48-12,-10,-5]) cube([12,3,45.5/2]);
//translate([48-5.5-2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
//};
//
//
//translate([0,-10,-5]) cube([12,10,3]) ;
//translate([48-12,-10,-5]) cube([12,10,3]) ;
//};

//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////

espesor_guia_abajo = 2.5;

//agregar soporte de guias
translate([48,8.5,10]) rotate(a =90,v=[0,0,1]) difference(){
union(){
translate([0,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([38,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([0,0,0]) cube([10,15,45.5/2-5+4.5]);
translate([48-12+2,0,0]) cube([10,15,45.5/2-5+4.5]);

difference(){translate([10,0,0]) cube([28,15,32.25+2-2]);
translate([24,15,45.5/2+4.5])rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 3.5, r2 = 3.5, $fn = 100);
};};

translate([14,7.5,2])cylinder(h=40, r1 = 5, r2 = 5, $fn=100);
translate([48-14,7.5,2])cylinder(h=40, r1 = 5, r2 = 5, $fn=100);
translate([14,7.5,0])cylinder(h=40, r1 = 2.5, r2 = 2.5, $fn=100);
translate([48-14,7.5,0])cylinder(h=40, r1 = 2.5, r2 = 2.5, $fn=100);
};



