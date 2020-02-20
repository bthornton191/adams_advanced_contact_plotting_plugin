def com echo=on

library create library_name = .contact_kc_plot

macro read &
   macro_name = .contact_kc_plot.load &
   user_entered_command = "mdi contact_kc_plot load" file= "contact_kc_plot_load.mac" &
   wrap_in_undo = no &
   create_panel = no
   
macro read &
   macro_name = .contact_kc_plot.unload &
   user_entered_command = "mdi contact_kc_plot unload" file= "contact_kc_plot_unload.mac" &
   wrap_in_undo=no &
   create_panel=no


lis ent ent=.contact_kc_plot
fil bin write file="win64\contact_kc_plot.bin" ent=.contact_kc_plot

var set var=imv93 &
   string="> NOTE: --------------------------------------", &
          "> Library image file contact_kc_plot.bin written.", &
          "> You must move this to the win64 directory if ", &
          "> you want ADrill Extensions to be available.", &
          "> --------------------------------------------"

lis var var=imv93
var del var=imv93