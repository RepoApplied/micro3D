

// piezas de doble rosca, prueba

rint = 6.3/2;
rext = 8.4/2;
altura = 10;

rint2 = 5.3/2;
rext2 = 8.4/2;
altura2 = 15;

translate([0,0, altura2]) difference(){cylinder(h = altura, r1 = rext, r2 = rext, $fn = 100);cylinder(h = altura, r1 = rint, r2 = rint, $fn = 100);}

difference(){cylinder(h = altura2, r1 = rext2, r2 = rext2, $fn = 100);cylinder(h = altura2, r1 = rint2, r2 = rint2, $fn = 100);}

translate([2.15,-3.5/2, 0]) cube([0.6,3.5,altura2]);
//en x me muevo 2.2 mm, genero un prisma

