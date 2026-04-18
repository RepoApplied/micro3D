

espesor = 5;
radio_exteriores = 3;
espesor_guia_abajo = 2.5;


espesor_esq_opuest = 2.5;
esp = 5;
    
difference(){    
union(){
translate([0,0,0]) difference() {cube([60,60,2*espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([30,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([50,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,50,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
    translate([10,10,5]) cylinder(h = 15, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([30,10,5]) cylinder(h = 23, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([50,10,5]) cylinder(h = 25, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,30,5]) cylinder(h = 15, r1 = 5.5, r2 = 5.5, $fn=100);
    translate([10,50,5]) cylinder(h = 15, r1 = 5.5, r2 = 5.5, $fn=100);
   };

translate([0,-20,0]) difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
//    translate([10,30,0]) cylinder(h = espesor, r1 = 3, r2 = 3, $fn=100);
  
    };
    
    
translate([0,-20,espesor]) difference() {cube([20,20,espesor]);
    translate([10,10,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
//    translate([10,30,0]) cylinder(h = espesor, r1 = 5, r2 = 5, $fn=100);
  
    };    

//////////////////////////////////////////////////////////////////////////////////

translate([20,20,10])  translate([-55.5,0,0]) union(){
translate([58-2.5,0,45.5/2-5+4.5]) 
union(){
difference(){translate([0,0,-(18-10)/2])cube([10,20,15]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48, r1 = 2.1, r2 = 2.1, $fn = 100);};
translate([10,0,0]) difference(){translate([0,0,-(18-10)/2])cube([10,20,15]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48, r1 = 2.1, r2 = 2.1, $fn = 100);
};};
translate([58-2.5,0,]) cube([20,20,45.5/2-5+4.5]) ;
};};

translate([45,25,0]) cube([20,60,15]);
translate([0,40,00]) cube([60,60,15]);
};

