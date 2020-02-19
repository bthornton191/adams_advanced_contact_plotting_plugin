!$contact_obj:t=contact:C=1:D=contact_1
!$Analysis:t=analysis:C=1:D=last_run
!$New_plot_name: t=string: C=1: D=contact_plot

! open the post processor
!interface plot window open

! collate the contact to end up with one track
analysis collate_contacts &
   analysis=$Analysis &
   contact=$contact_obj

! create a new page in the post processor
!interface plot window &
!  create_new_page &
!   default_layout=yes

! 
xy_plot template create plot=(eval("."//"$New_plot_name")) &
   auto_title=yes &
   auto_subtitle=yes &
   auto_date=yes &
   auto_analysis_name=yes &
   table=no

var set var=sep_str string='.'

xy_plot curve create curve=(eval("."//"$New_plot_name"//".computed_Contact_force")) &
   create_page=no &
   calculate_axis_limits=no &
   y_expression=(eval($contact_obj//".stiffness*ABS("//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.Depth)**"//$contact_obj//".exponent-STEP(abs("//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.Depth),0,0,"//$contact_obj//".dmax,"//$contact_obj//".damping)*"//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.velocity")) &
   x_expression=(eval($Analysis.TIME)) &
   y_units = "force" &
   x_units = "time"
plotcurve3d curve modify curve=(eval("."//"$New_plot_name"//".computed_Contact_force")) legend="computed_Contact_force"
xy_plot curve create curve=(eval("."//"$New_plot_name"//".computed_K_force")) &
   create_page=no &
   calculate_axis_limits=no &
   y_expression=(eval($contact_obj//".stiffness*(-1*"//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.Depth)**"//$contact_obj//".exponent")) &
   x_expression=(eval($Analysis.TIME)) &
   y_units = "force" &
   x_units = "time"
plotcurve3d curve modify curve=(eval("."//"$New_plot_name"//".computed_K_force")) legend="computed_K_force"
xy_plot curve create curve=(eval("."//"$New_plot_name"//".computed_C_force")) &
   create_page=no &
   calculate_axis_limits=no &
   y_expression=(eval("-1*STEP(abs("//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.Depth),0,0,"//$contact_obj//".dmax,"//$contact_obj//".damping)*"//$Analysis//"."//STR_SPLIT($contact_obj,sep_str)[3]//".TRACK_1.Penetration.velocity")) &
   x_expression=(eval($Analysis.TIME)) &
   y_units = "force" &
   x_units = "time"
plotcurve3d curve modify curve=(eval("."//"$New_plot_name"//".computed_C_force")) legend="computed_C_force"
xy_plots template &
   auto_zoom &
   plot_name=(eval("."//"$New_plot_name"))
xy_plot template &
   calculate_axis_limits &
   plot_name=(eval("."//"$New_plot_name"))
   

