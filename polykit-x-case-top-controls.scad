x=400;
y=191;
z=5;
$fn=32;

projection() {
    difference() {
        cube([x, y, z], true);
        {
            // switches
            translate([43, -39.5, 0]) {
                for (i = [0:3]) {
                    translate([i*24.7, 0, 0]) {
                        #cylinder(h=5, d=3.5, center=true);
                    }
                }
            }
            translate([27.5, -62, 0]) {
                #cylinder(h=5, d=3.5, center=true);
            }
            translate([132.5, -62, 0]) {
                #cylinder(h=5, d=3.5, center=true);
            }
            // encoders
            for (i = [0:3]) {
                for (j = [0:3]) {
                    translate([5, -20, 0]) {
                        translate([i*50, j*30, 0]) {
                            #cylinder(h=5, d=7.5, center=true);
                        }
                    }   
                }
            }
            // input section
            translate([-80, -50, 0]) {
                for (i = [0:4]) {
                    translate([0, i*30, 0]) {
                        #cylinder(h=5, d=7.5, center=true);
                    }
                }
            }
            translate([-150, -50, 0]) {
                for (i = [0:4]) {
                    translate([0, i*30, 0]) {
                        #cylinder(h=5, d=10, center=true);
                    }
                }
            }
            // holes for fixation
            translate([(x/2)-5, (y/2)-10]) {
                #cylinder(h=5, d=3.5, center=true);
            }
            translate([-((x/2)-5), ((y/2)-10)]) {
                #cylinder(h=5, d=3.5, center=true);
            }            
            translate([((x/2)-5), -((y/2)-10)]) {
                #cylinder(h=5, d=3.5, center=true);
            }
            translate([-((x/2)-5), -((y/2)-10)]) {
                #cylinder(h=5, d=3.5, center=true);
            }
        }
    }
}
