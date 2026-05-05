



translate([-20,-20+150/2+10-150/4,0]) difference(){cube([20,20,2]);
translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};
translate([-20,-20+150/2+20+150/4,0]) difference(){cube([20,20,2]);
translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};

cube([102,150,2]);

translate([100+2,0,0]) cube([2,152,20+2]);


translate([-20+120,-20+150/2+10,10]) difference(){translate([2,0,0]) cube([18,20,2]);
translate([10,10,-1]) cylinder(h = 10, r1 = 2, r2 = 2, $fn = 100);
};






