// Plastic adaptor guard with upward taper and cylindrical recess (no flange)
// https://openscad.cloud/openscad/

top_diameter = 18;     // Wider top
bottom_diameter = 17;  // Narrower base
height = 3.5;
recess_diameter = 11.90;
recess_depth = 3;

difference() {
    // Tapered frustum body
    cylinder(h=height, d1=bottom_diameter, d2=top_diameter, $fn=100);

    // Cylindrical recess cuts into the top
    translate([0, 0, height - recess_depth]) {
        cylinder(d=recess_diameter, h=recess_depth + 0.2, $fn=100);
    }
}