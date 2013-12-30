playroom = 0.5;
cc_dimensions = [85.60,53.98+playroom,0.76];
wallet_dimensions = cc_dimensions + [4,4,2];
thumb_radius=12;

difference() {
	cube(wallet_dimensions);
	translate([
		(wallet_dimensions[0]-cc_dimensions[0])/2,
		(wallet_dimensions[1]-cc_dimensions[1])/2,
		wallet_dimensions[2]-cc_dimensions[2]]) 
			cube(cc_dimensions);
	rotate([0,-20,0]) cube([10,wallet_dimensions[1],wallet_dimensions[2]]);
	hull() {
		translate([wallet_dimensions[0]/1.6, wallet_dimensions[1]/2, 0]) cylinder(r=thumb_radius,h=wallet_dimensions[2]);
		translate([wallet_dimensions[0]/2.7, wallet_dimensions[1]/2, 0]) cylinder(r=thumb_radius,h=wallet_dimensions[2]);
	}
	translate([wallet_dimensions[0], wallet_dimensions[1]/2, 0]) cylinder(r=thumb_radius,h=wallet_dimensions[2]);
	translate([wallet_dimensions[0]/6,0,0]) 	cube([3,wallet_dimensions[1],1]);
	translate([wallet_dimensions[0]/1.24,0,0]) 	cube([3,wallet_dimensions[1],1]);
}
