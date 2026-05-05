

translate([0,0,20]){
translate([-20,-20+150/2+10-150/4,0]) difference(){cube([20,20,2]);
translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};
translate([-20,-20+150/2+20+150/4,0]) difference(){cube([20,20,2]);
translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};

cube([102,150,2]);
};


//difference(){cube([100,2,20+2]);
//translate([20,0,0]) cube([10,2,20+2]);
//translate([70,0,0]) cube([10,2,20+2]);
//};

//cube([2,150,20+2]);
//translate([0,150,0]) difference(){cube([100,2,20+2]);
//translate([20,0,0]) cube([10,2,20+2]);
//translate([70,0,0]) cube([10,2,20+2]);
//};
//translate([100,0,0]) cube([2,152,20+2]);


translate([100,152/2-10,20+2]) difference(){
    cube([2,20,20]);
    translate([-3,10,10]) rotate(a=[0,90,0]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};




//translate([-20+120,-20+150/2+10,10]) difference(){cube([20,20,2]);
//translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
//};




