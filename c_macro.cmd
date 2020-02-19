!$contact_obj:t=contact:C=1

var set var = c_types  string =(eval({"solid_to_solid", "curve_to_curve", "point_to_curve", "point_to_plane", "curve_to_plane", "sphere_to_plane", "sphere_to_sphere", "flex_to_solid", "flex_to_flex", "flex_edge_to_curve", "flex_edge_to_flex_edge", "flex_edge_to_plane", "cylinder_to_cylinder"}))

var set var = c_type string = (eval(c_types[$contact_obj.type+1]))

contact create  &
   contact_name = (eval($contact_obj.name//"_dummy"))  &
   type = (eval(c_type))  &
   i_flex = (eval($contact_obj.i_flex))   &
   j_flex = (eval($contact_obj.j_flex))   &
   normal_function = ($contact_obj.stiffness),($contact_obj.exponent),($contact_obj.damping),($contact_obj.dmax)  &
   normal_routine = "C_REQSUB::CNFSUB"  &
   no_friction = true

output_control create request  &
   results_name = (eval($contact_obj.name//"_data"))  &
   component_names = "","PenetrationDepth","PenetrationVelocity","theNormalForce","","theKPortion","theCPortion",""  &
   component_units = "no_units", "length", "velocity", "force", "no_units", "force", "force", "no_units"  &
   request_name = (eval($contact_obj.name//"_req"))   &
   user_function = 1.0  &
   routine = "C_REQSUB::REQSUB"
   
var del var = c_types
var del var = c_type