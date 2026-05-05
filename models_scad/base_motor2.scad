

espesor = 5;
radio_exteriores = 3;

//translate([8.5,13,espesor]) difference() {cube([48,39,espesor]);
//translate([16.5,12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([48-16.5,12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([16.5,39-12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//translate([48-16.5,39-12,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//};


difference(){
union(){
translate([0,0,0]) difference() {cube([60,60,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([30,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([50,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,50,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    
    translate([8.5,13,0]) union(){
    translate([16.5,12,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    translate([48-16.5,12,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    translate([16.5,39-12,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    translate([48-16.5,39-12,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    };
    };
    
    
translate([0,0,espesor]) difference() {cube([60,60,0]);
    translate([10,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([30,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([50,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,30,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,50,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    
    translate([8.5,13,0]) union(){
    translate([16.5,12,0]) cylinder(h = 5, r1 = 2.5, r2 = 2.5, $fn=100);
    translate([48-16.5,12,0]) cylinder(h = 5, r1 = 2.5, r2 = 2.5, $fn=100);
    translate([16.5,39-12,0]) cylinder(h = 5, r1 = 2.5, r2 = 2.5, $fn=100);
    translate([48-16.5,39-12,0]) cylinder(h = 5, r1 = 2.5, r2 = 2.5, $fn=100);
    };
    };
};    
translate([20,20,0]) cube([40,40,10]);    
};






