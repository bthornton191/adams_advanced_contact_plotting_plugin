def com echo=on

! -------------------------
! Create the plugin library
! -------------------------
library create library_name = .advanced_contact_plotting

! ---------------------
! Create the load macro
! ---------------------
macro read &
   macro_name = .advanced_contact_plotting.load &
   user_entered_command = "mdi advanced_contact_plotting load" &
   file_name = "advanced_contact_plotting_load.mac" &
   wrap_in_undo = no &
   create_panel = no
   
! -----------------------
! Create the unload macro
! ----------------------- 
macro read &
   macro_name = .advanced_contact_plotting.unload &
   user_entered_command = "mdi advanced_contact_plotting unload" &
   file_name = "advanced_contact_plotting_unload.mac" &
   wrap_in_undo=no &
   create_panel=no

! ------------------------------
! Read the contact kc plot macro
! ------------------------------
macro read  &
   macro_name = .advanced_contact_plotting.contact_KC_plot  &
   file_name = "contact_KC_plot.mac"  &
   user_entered_command = "contact_KC_plot"  &
   wrap_in_undo = yes  &
   create_panel = no

! ------------------
! Write the bin file
! ------------------
lis ent ent=.advanced_contact_plotting
fil bin write file="win64\advanced_contact_plotting.bin" ent=.advanced_contact_plotting

var set var=imv93 &
   string="> NOTE: --------------------------------------", &
          "> Library image file advanced_contact_plotting.bin written.", &
          "> You must move this to the win64 directory if ", &
          "> you want ADrill Extensions to be available.", &
          "> --------------------------------------------"

lis var var=imv93
var del var=imv93