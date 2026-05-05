

espesor = 5;
radio_exteriores = 3;

X = 22.5-16.5;
Y = 22.5-12;


difference() {union(){
translate([0,0,0]) difference() {cube([60,60,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([30,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([50,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,50,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    
    translate([50,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([50,50,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    

    };
    
    
translate([0,0,espesor]) difference() {cube([60,60,5]);
    translate([10,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([30,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([50,10,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,30,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,50,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    
    translate([50,30,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([50,50,0]) cylinder(h = 5, r1 = 5.5, r2 = 5.5, $fn=100);
    

    };
    
    
translate([-20,0,0]) union(){ difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    };
translate([0,0,espesor]) difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    };};    
translate([60,0,0]) union(){ difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    };
translate([0,0,espesor]) difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
    };};  };    

translate([20,20,0]) cube([20,40,15]);
}; 


