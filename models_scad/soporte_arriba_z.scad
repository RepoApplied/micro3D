
module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}


espesor = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

esp = 5.4;
    
grosor = 15;


difference(){
translate([0,0,40+10]) rotate(a = 90, v = [1,0,0]) union(){

translate([0,-50,0]) cube([19,10,10]);
translate([+29,-50,0]) cube([19,10,10]);
translate([0,-50,10]) cube([48,10,10-5.75+1.5]);
translate([0,-50,15.75]) cube([16.5,10,4.5]);
translate([31.5,-50,15.75]) cube([16.5,10,4.5]);

translate([0,-40,0]) union(){
    
translate([0,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.2, r2 = 2.2, $fn = 100);
};
translate([38,-10,45.5/2-2.5]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.2, r2 = 2.2, $fn = 100);
};
translate([(48-10)/2,-10,0]) difference(){cube([10,10,10]);
translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 15 , r1 = 2.2, r2 = 2.2, $fn = 100);
};
translate([0,+3-(3+esp+3),-2.5]) union(){

difference(){ translate([0,-1.6,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 30, center = true, twist = 0) circle(r = 4, $fn=100);
};

translate([0,3,0]) difference(){ translate([0,-1.6,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,7, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 30, center = true, twist = 0) circle(r = 10.5/2, $fn=100);
};


};};

};

////////////////////////////////////////
translate([0,-30-10,-1]) cube([48,10,20]);
};

difference(){
translate([0,-30-20,0]) cube([48,20,5]);
translate([16,-30-10,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100); 
translate([32,-30-10,0]) cylinder(h = 5, r1 = 3, r2 = 3, $fn=100); 
};






