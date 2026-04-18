


translate([12-0.7,0.7,0]) rotate(a=[0,0,45]) translate([1.5,0,0])union(){
cube([3,1.5,26]);
translate([0,6.5+1.5,0]) cube([3,1.5,26]);
translate([-1.5,0,0]) cube([1.5,6.5+1.5+1.5,26]);
};


difference(){cube([12,12,26]);
translate([12,0,0]) rotate(a=[0,0,45])cube([17,17,26]);
};
