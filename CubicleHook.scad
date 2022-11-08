$fa = 1;
$fs = 0.4;
J = 0.001;  //offset for join

W = 50;     //Width of Hook
T = 5;      //Thickness of hook
Y1 = 20;    //Height of catch on back side of hook
X1 = 55;    //Width of cubicle or door
Y2 = 60;   //Distance from top of cubicle or door to hook
R = 20+2*T;     //Radius of hook (outer radius)

M = "Nathan Wehr";  //Message
letter_size = 5;
letter_height = 1;
font = "Liberation Serif:style=Bold Italic"; 
//["Liberation Sans", "Liberation Sans:style=Bold", "Liberation Sans:style=Italic", "Liberation Mono", "Liberation Serif"]


//rotate([90,0,0]){
cube([T,Y1+J,W]);

translate([0,Y1-J,0])
cube([X1+T,T,W]);

translate([X1+T-J,Y1-Y2-J,0])
cube([T,Y2+T+J,W]);

difference(){
translate([X1+T+R,0-Y2+R-2*T,0])
linear_extrude(W)
circle(R);

translate([X1+T+R,0-Y2+R-2*T,0-J])
linear_extrude(W+2*J)
circle(R-T);
    
translate([X1+T,0-Y2+R-2*T,0-J])
cube([2*R,2*R+J,W+2*J]);    
}


translate([X1+2*T-J,0,0.5*W]) 
rotate([0,90,0])
linear_extrude(letter_height)

text(M, size = letter_size, font = font, halign = "center");
//}