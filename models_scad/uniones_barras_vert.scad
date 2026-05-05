

translate([0,5,0]) rotate(a = 90, v=[0,0,1]) difference(){
union(){
cube([20,5,25]);
translate([0,0,25])cube([20,5,20]);    
};
translate([10,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([10,0,35]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
};


difference(){
union(){
cube([20,5,25]);
translate([20,0,0]) cube([20,5,20]);    
translate([0,0,25])cube([20,5,20]);    
};
translate([10,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([10,0,35]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([30,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);

};

translate([-5,0,0]) cube([5,5,45]);




translate([60,0,0]) union(){translate([0,5,0]) rotate(a = 90, v=[0,0,1]) difference(){
union(){
cube([20,5,25]);
translate([0,0,25])cube([20,5,20]);    
};
translate([10,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([10,0,35]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
};


difference(){
union(){
cube([20,5,25]);
translate([0,5,0]) rotate(a = 90, v=[0,0,1]) translate([20,0,0]) cube([20,5,20]);    
translate([0,0,25])cube([20,5,20]);    
};
translate([10,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([10,0,35]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);
translate([0,5,0]) rotate(a = 90, v=[0,0,1]) translate([30,0,10]) rotate(a = 90, v= [-1,0,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100);

};
translate([-5,0,0]) cube([5,5,45]);

};







