

module hexa(tot_h, radio)
{	linear_extrude(height = tot_h, center = true, twist = 0)
	circle(r = radio, $fn=6);}

x_motor3 = 45;
y_motor3 = 45;
z_motor3 = 8;


radio = 6;
espesor = 5;

//union(){
//translate([17-espesor,33/2-(2*radio+1)/2,0]) cube([espesor, 2*radio+1 , 8]);
//translate([17-espesor,4,4]) cube([espesor, 25 , 4]);
//};

//translate([0,0,espesor]) rotate(a=90, v=[0,1,0]) 
    
//difference(){
//translate([0,-(2*radio+1)/2,0]) cube([espesor, 2*radio+1 , 2*radio+2+2+2]);
//translate([2.5,0,radio+2+2]) rotate(a=90, v=[0,1,0]) hexa(espesor, radio);   
//};

//translate([2.5,0,radio+2+2]) rotate(a=90, v=[0,1,0]) cylinder(espesor, r1 = 3, r2 = 3);


//translate([0,0,20]) rotate(a=180, v=[0,1,0]) difference(){
//translate([20-9/2,-17/2,0]) cube([9, 17, 20]);
//translate([20-5.2/2,-(2*radio+1.6)/2,0]) cube([5.2, 2*radio+1.6, 2*radio+2+2+2.6]);
//translate([20,0,radio+2+2]) rotate(a=90, v=[0,1,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);;
//};
//



//
//translate([0,0,20]) rotate(a=180, v=[0,1,0]) difference(){
//translate([20-9/2,-17/2,0]) cube([9, 17, 20]);
//translate([20-5.2/2,-(2*radio+1.6)/2,0]) cube([5.2, 2*radio+1.6, 20]);
//translate([20,0,radio+2+2]) rotate(a=90, v=[0,1,0]) linear_extrude(height = 9, center = true, twist = 0) circle(r = 7/2, $fn=100);;
//};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

esp = 5.2;

grosor = 15;

difference(){translate([24-grosor/2+2.3+0.2,0,45.5/2+4.5-18/2+11]) cube([10,esp-0.5,50]);
translate([24,esp/2,45.5/2+4.5]) rotate(a=90, v=[0,0,1]) rotate(a=90, v=[0,1,0])hexa(esp, 6);};

