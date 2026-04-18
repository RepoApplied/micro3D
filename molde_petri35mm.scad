


//translate([0,0,0]) difference(){
//cube([140,97,18]);
//translate([5,5,2])cube([130,87,18]);    
//translate([10,10,0])cube([120,77,18]);    
//
//};

//translate([5,5,25])

// 

difference(){
cube([128,85,5]);
translate([(128-75.5)/2,(85-25.5)/2,0]) union(){
    translate([0,0,2])cube([75.5,25.5,3]);
    translate([2,2,0])cube([70.5,20.5,2]);
    translate([75.5/2,0,2+15]) sphere(r = 15, $fn=100);
    translate([75.5/2,25.5,2+15]) sphere(r = 15, $fn=100);
};
};


