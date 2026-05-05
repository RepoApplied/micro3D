





difference(){
    cylinder(h = 2
    , r1=10.5, r2=10.5, $fn=1000);
cylinder(h = 7, r1=8.5, r2=8.5, $fn=1000);
};

translate([0,0,4]) difference(){translate([-15,-15,0]) cube([30,30,1]);
cylinder(h = 7, r1=8.5, r2=8.5, $fn=1000);
};
translate([0,0,5]) difference(){translate([-15,-15,0]) cube([30,30,4]);
cylinder(h = 7, r1=11.5, r2=11.5, $fn=1000);
};



 









