# Advanced Contact Plotting (an MSC/Adams plugin)

An extension to MSC Adams PPT which adds a button for plotting the components of a contact normal force seperated in to stiffness force and damping force.

## Installing on Windows

Download adams_advanced_contact_plotting_plugin.bin and adams_advanced_contact_plotting_plugin_plg.xml and place them in you Adams installation at $topdir\win64.  Open Adams View and navigate to *Tools>Plugin Manager*.  Ensure that *Load* and *Load at Startup* are both checked in the *Advanced Contact Plotting* row.

> **NOTE:** The plugin is not currently supported on other platforms

## Usage

Once the plugin is loaded you can the steps below to generate the plot.

1. Navigate to *Tools>Plot Contact K and C Components*
2. Select the contact for which you want to plot the stiffness and damping components
3. Select the analysis
4. Select a name for the new plot that will be created
5. Click *OK*

## Modifying

Once the codebase has been modified, run build_bin.cmd in adams view.  This will update adams_advanced_contact_plotting_plugin.bin.
