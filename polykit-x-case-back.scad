x=400;
y=130;
z=5;
$fn=32;

projection() {
    difference() {
        cube([x, y, z], true);
        {
        // power
        translate([-((x/2)-30), -((y/2)-20)]) {
            #cylinder(h=5, r=5.5, center=true);
        }        
        // audio
        translate([-((x/2)-55), -((y/2)-20)]) {
            #cylinder(h=5, r=5, center=true);
        }
        translate([-((x/2)-75), -((y/2)-20)]) {
            #cylinder(h=5, r=5, center=true);
        }
        translate([-((x/2)-95), -((y/2)-20)]) {
            #cylinder(h=5, r=5, center=true);
        }
        // midi
        translate([-((x/2)-122.5), -((y/2)-20)]) {
            #cylinder(h=5, d=15.1, center=true);
            translate([-11, 0, 0]) {
                #cylinder(h=5, d=3.5, center=true);
            }
            translate([11, 0, 0]) {
                #cylinder(h=5, d=3.5, center=true);
            }
        }
        }    
    }
}