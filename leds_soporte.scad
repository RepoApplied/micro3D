

d_out = 29;
d_in = 26;

altura_lens=32;

difference(){
translate([0,0,35]) union(){
translate([0,0,10]) difference(){
translate([-29/2,-29/2,0]) cube([29,29,13.5]);
cylinder(h=21,r1=20/2,r2=20/2,$fn=100);
};

translate([-12.5+0.1+0.25,-12.5+0.1+0.25,2])cube([3.2,3.5,8]);
translate([-12.5+0.1+0.25,12.5-4.1-0.25,2])cube([3.2,3.5,8]);

translate([12.5-4.1+0.25,-12.5+0.1+0.25,2])cube([3.2,3.5,8]);
translate([12.5-4.1+0.25,12.5-4.1-0.25,2])cube([3.2,3.5,8]);

translate([-6.5/2,-21,10+1.5]) rotate(a = 90, v = [0,1,0])difference(){
cube([1.5,6.5,6.5]);
translate([-1,6.5/2,6.5/2]) rotate(a=90,v=[0,1,0])cylinder(h=5,r1=3.5/2,r2=3.5/2,$fn=100);
};


translate([0,0,-5])difference(){translate([-29/2,-29/2,10+18.5])cube([29,29,1.5]);
    
rad = 0.6;    
translate([0,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
translate([0,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 60, v = [0,0,1]) translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 60, v = [0,0,1]) translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 120, v = [0,0,1]) translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 120, v = [0,0,1]) translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 180, v = [0,0,1]) translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 180, v = [0,0,1]) translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 240, v = [0,0,1]) translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 240, v = [0,0,1]) translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 300, v = [0,0,1]) translate([6,-1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);
rotate(a = 300, v = [0,0,1]) translate([6,1,28.5]) cylinder(h=2,r1=rad,r2=rad,$fn=100);

};



difference(){translate([-29/2,-29/2,10+18.5-5]) cube([29,29,15]);
translate([-25/2,-25/2,10+18.5-5]) cube([25,25,25]);
};

};
translate([-2.5,10,60]) cube([5,5,30]);
};










