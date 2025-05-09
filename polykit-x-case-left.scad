x=310;
y=130;
z=5;
$fn=32;

projection() {
    difference() {
        cube([x, y, z], false);
        {
            translate([0, y/2, 0]) {
                rotate(a=20.37644, v=[0, 0, 1]) {
                    #cube([191*2, y/2, z], false);       
                }
            }
            translate([235, 90, 0]) {
                for(i = [0:7]) {
                    for(j = [0:7]) {
                        translate([i*4, j*4, 0]) {
                            #cylinder(h=5, d=3, center=false);
                        }   
                    }
                }
            }
        }
    }
}
