x=400;
y=140;
z=5;

projection() {
    difference() {
        cube([x, y, z], true);
        {
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