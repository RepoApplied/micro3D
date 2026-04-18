






difference(){
    union(){
        cube([40,20,5]);
        translate([0,20,0])cube([20,20,5]);
        };
    translate([30,10,0]) cylinder(h = 10, r1= 3, r=3, $fn = 100);
    translate([10,30,0]) cylinder(h = 10, r1= 3, r=3, $fn = 100);
};

translate([0,18,5])cube([20,2,20]);
translate([18,0,5])cube([2,20,20]);





