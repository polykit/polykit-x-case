// from https://github.com/GitBruno/knob/blob/master/knob.scad
// with modifications

// AWG Knob

// Parameters
// -----------------

// Knob Height
shaft_depth = 18;
height_addon = 2; // At least the wall thickness

// Knob width
knob_width = 13.5;

// Shaft width
shaft_width = 6.0;

// D-shaft
dshaft_enabled = false;
dshaft_startdepth = 6;
dshaft_inset = 6.75;

// Knob finish
skirt_addon = 0; // Will add to knob width
skirt_depth = 2;
skirt_slope_height = 6;

grip_star = 8;
top_round_inset = 3;
top_round_height = 1;

// -----------------


// Build
// -----------------

dshaft_clear = shaft_depth - (shaft_depth - dshaft_startdepth);
height = shaft_depth + height_addon;
diameterBottom = knob_width + skirt_addon;

$fn = 100; // Smooth Model

difference(){
    intersection(){
        union(){
            cylinder(d=knob_width,h=height,$fn=grip_star);
            rotate(a=360/grip_star/2,v=[0,0,1]) {
                cylinder(d=knob_width,h=height,$fn=grip_star);
            };
            // bottom finish
            cylinder(d=diameterBottom,h=skirt_depth);
            translate([0,0,skirt_depth]) {
                cylinder(d1=diameterBottom,d2=0,h=skirt_slope_height);
            };
        };
        // top finish
        union(){
            cylinder(d1=diameterBottom,d2=knob_width,h=height-top_round_height);
            translate([0,0,height-top_round_height]) {
                cylinder(d1=knob_width,d2=knob_width-top_round_inset,h=top_round_height);
            };
        };
    };
    
    // Shaft
    //------
    difference(){
        union(){
            translate([0,0, -1]){
                cylinder(d=shaft_width,h=shaft_depth+1);
                cylinder(d1=knob_width,d2=0,h=knob_width/2);
                cylinder(d=knob_width-2,h=3);
            };
        }
        if (dshaft_enabled) {
            translate([0,0, dshaft_clear])
            translate([dshaft_inset,0,dshaft_startdepth])
            cube([10,10,shaft_depth-dshaft_clear],center=true);  
        }
    }
}
