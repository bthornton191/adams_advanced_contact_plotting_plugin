# Advanced Contact Plotting (an MSC/Adams plugin)

An extension to MSC Adams PPT which adds a button for plotting the components of a contact normal force seperated in to stiffness force and damping force.

## Installing on Windows

Download **adams_advanced_contact_plotting_plugin.bin** and **adams_advanced_contact_plotting_plugin_plg.xml** and place them in your Adams installation at **$topdir\win64**.  Open Adams View and navigate to *Tools>Plugin Manager*.  Ensure that *Load* and *Load at Startup* are both checked in the *Advanced Contact Plotting* row.  

> **NOTE:** You can ignore the message about versions as long as you meet the compatibility criteria below.

## Installing on Linux

This plugin is not currently supported on linux.

## Compatibility

The **advanced_contact_plotting.bin** file included in this repository was created for Adams\View **2014**, but it will work with all versions of Adams **after 2014**.  It is not compatible with prior versions.  If needed, you can run **build_bin.cmd** in your version of Adams\View to generate a version specific **advanced_contact_plotting.bin** file.

## Usage

Once the plugin is loaded you can the follow the steps below to generate the plot.

1. Navigate to *Tools>Plot Contact K and C Components*
2. Select the contact object for which you want to plot the stiffness and damping components
3. Select the analysis
4. Select a name for the new plot that will be created
5. Click *OK*

## Method

**TODO**: Add a paragraph about the method for generating the contact

## Modifying

Once the codebase has been modified, run build_bin.cmd in adams view.  This will update adams_advanced_contact_plotting_plugin.bin.  Make sure you set this repository as your working direcory in Adams/View.
