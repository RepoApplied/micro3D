

module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}


espesor = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

esp = 5;
    
difference(){ translate([40,0,-18]) union(){
translate([58,48,36.75+40]) rotate(a=-90, v=[0,0,1])union(){difference(){
union(){
translate([0,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([38,0,45.5/2-5+4.5]) difference(){cube([10,15,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.1, r2 = 2.1, $fn = 100);
};
translate([0,0,0]) cube([10,15,45.5/2-5+4.5]);

translate([0,0,-40]) cube([48,15,40]);

translate([48-12+2,0,0]) cube([10,15,45.5/2-5+4.5]);

difference(){translate([10,0,0]) cube([28,15,32.25+2-2]);
translate([24,15,45.5/2+4.5])rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 3.3, r2 = 3.3, $fn = 100);
};};};};



translate([58-2.5,0,45.5/2-5+4.5]) 
union(){
difference(){translate([0,0,-(18-10)/2])cube([10,48,18+2]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48, r1 = 2.3, r2 = 2.3, $fn = 100);
};

translate([10,0,0]) difference(){translate([0,0,-(18-10)/2])cube([10,48,18+2]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48, r1 = 2.3, r2 = 2.3, $fn = 100);
};};
};

translate([18,0,24.75]) translate([38,19,45.5/2-5+4.5-(18-10)/2+18+5]) rotate(a = 90, v= [0,0,1]) translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 80 , r1 = 2.1, r2 = 2.1, $fn = 100);

};


