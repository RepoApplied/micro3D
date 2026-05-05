
module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}


espesor = 2.5;
radio_exteriores = 3;
radio_big = 23/2;

esp = 5.4;
    
grosor = 15;
    
    
////////////////////////////////////////////////////////////////////////////////    
//    
translate([0,0,40]) union(){    
translate([95,0,18.75]) rotate(a=90, v= [0,0,1]) union(){
translate([0,0,45.5/2-5+4.5]) difference(){translate([0,0,-(18-10)/2])cube([10,48,18]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48, r1 = 2.2, r2 = 2.2, $fn = 100);
};
translate([38,0,45.5/2-5+4.5]) difference(){translate([0,0,-(18-10)/2])cube([10,48,18]);
translate([5,48,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 48 , r1 = 2.2, r2 = 2.2, $fn = 100);
};



translate([0,0,0]) union(){
translate([0,3,0]) union(){difference(){
translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
};
difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
};

translate([0,3+11+7.5,0]) union(){difference(){
translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
};
difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
};


translate([0,3+11+7.5+11+7.5,0]) union(){difference(){
translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,esp, 18]);
    translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);
    translate([24-grosor/2+2.3,0,45.5/2+4.5-18/2+11]) cube([10.4,esp,10]);
};
difference(){ translate([0,-3,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,-3,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
difference(){ translate([0,esp,0]) translate([24-grosor/2,0,45.5/2+4.5-18/2])cube([grosor,3, 18]);
translate([0,5,0]) translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[1,0,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);};
};
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
difference(){
translate([38,0,45.5/2-5+4.5-(18-10)/2+18+5]) rotate(a = 90, v= [0,0,1]) union(){
    
translate([0,-10,-espesor]) difference() {cube([48,48,2*espesor+50-62.5+8+45]);};
translate([0,-10,-5]) difference() {cube([48,48,espesor]);};
};

translate([24-grosor/2+2.3,3,45.5/2+4.5-18/2+11]) cube([10.4,esp,200]);
translate([24-grosor/2+2.3,3+11+7.5,45.5/2+4.5-18/2+11]) cube([10.4,esp,200]);

translate([24-grosor/2+2.3,3+11+7.5+11+7.5,45.5/2+4.5-18/2+11]) cube([10.4,esp,200]);
};

};

   
translate([0,48,120+5-40]) difference(){
cube([140,97,18]);
translate([5,5,2])cube([130,87,18]);    
translate([10,10,0])cube([120,77,18]);    
};

};


///////////////////////////////////////////////////////////////////////////////


//translate([57,0,40]) translate([38,0,45.5/2-5+4.5+0.75]) translate([0,0,-(18-10)/2]) rotate(a=90, v= [0,0,1]) cube([10,48,18]);

//translate([57,38,40]) translate([38,0,45.5/2-5+4.5+0.75]) translate([0,0,-(18-10)/2]) rotate(a=90, v= [0,0,1]) cube([10,48,18]);

difference(){translate([57,19,40]) translate([38,0,45.5/2-5+4.5+0.75]) translate([0,-2.5,-(18-10)/2]) rotate(a=90, v= [0,0,1]) cube([15,48.4,18]);
translate([18,0,24.75]) translate([38,19,45.5/2-5+4.5-(18-10)/2+18+5]) rotate(a = 90, v= [0,0,1]) translate([5,15,5]) rotate(a = 90, v=[1,0,0]) cylinder(h = 80 , r1 = 2.2, r2 = 2.2, $fn = 100);
};
