

espesor_motor_1 = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

// corregir dimensiones

translate([0,0,5]) union(){
translate([0,0,-espesor_motor_1]) difference() {cube([48,39,2*espesor_motor_1]);
translate([16.5,12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
translate([48-16.5,12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
translate([16.5,39-12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
translate([48-16.5,39-12,0]) cylinder(h = 2*espesor_motor_1, r1 = 5, r2 = 5, $fn=100);
};


translate([0,0,-5]) difference() {cube([48,39,espesor_motor_1]);
translate([16.5,12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
translate([48-16.5,12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
translate([16.5,39-12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
translate([48-16.5,39-12,0]) cylinder(h = espesor_motor_1, r1 = 2.5, r2 = 2.5, $fn=100);
};

difference(){translate([0,0,espesor_motor_1]) cube([espesor_motor_1,36.5,43]);
translate([0,39-10-2.5,2.5+43-30]) cube([2.5,10,30]);};

translate([48-2.5,0,espesor_motor_1]) cube([espesor_motor_1,39,43]);
translate([0,39-2.5,espesor_motor_1]) cube([48,espesor_motor_1,13]);


translate([2.5,2.5,2.5]) rotate(a = +90,v=[1,0,0]) difference(){cube([43,43,espesor_motor_1]);
translate([5.5,5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([43-5.5,5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([5.5,43-5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);
translate([43-5.5,43-5.5,0]) cylinder(h = espesor_motor_1, r1 = radio_exteriores, r2 = radio_exteriores, $fn=100);   
translate([43/2,43/2,0]) cylinder(h = espesor_motor_1, r1 = radio_big, r2 = radio_big, $fn=100);   
translate([43/2-radio_big,43/2,0])cube([23,43/2,espesor_motor_1]);    };



//agregar soporte de guias



translate([0,-10,45.5/2-5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};

translate([38,-10,45.5/2-5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};


difference(){translate([0,-10,-5]) cube([12,3,45.5/2]);
translate([5.5+2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
};
difference(){translate([48-12,-10,-5]) cube([12,3,45.5/2]);
translate([48-5.5-2.5,-5,5.5+2.5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 9 , r1 = 3, r2 = 3, $fn = 100);
};


translate([0,-10,-5]) cube([12,10,3]) ;
translate([48-12,-10,-5]) cube([12,10,3]) ;
};



///// corregir el tamaño
///// agregar base pequeña para
