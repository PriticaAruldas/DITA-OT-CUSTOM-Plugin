# DITA-OT-CUSTOM-Plugin

This project represents a **DITA-OT PDF** customization plugin used to generate the DITAxPresso in the PDF format. It was tested with the **DITA-OT 3.3** processor.

Project organization:

1. cfg - This folder contains the XSLT customization stylesheets, XML catalog, and font configuration.
2. plugin.xml - The plugin descriptor file.
3. build.xml, integrator.xml- These files are plugin build files.
4. AdditionalParameters - This file contains the additional parameters used for customizing the chapter name and numbers.
5. fonts - This folder contains the font ProductSans that we use for our Customization.

To use the plugin, use the following steps using command line:
1. Download DITA-OT 3.3.2
2. Download the ZIP archive associated with this project by using the Clone or download button.
3. Install the plugin by running the command ``dita-ot-dir/bin/dita --install=plug-in-zip``.
4. Invoke the PDF transformation using the **cust-pdf** transtype in a command, as in the following example:

    dita --input=BookMap.ditamap --output=plugin_output --format=cust-pdf

Read About [Plugins](https://github.com/PriticaAruldas/DITA-OT-CUSTOM-Plugin/blob/master/About_Plugin.md)

Read About [Variables](https://github.com/PriticaAruldas/DITA-OT-CUSTOM-Plugin/blob/master/Variables.md)

View Plugin [Screens](https://github.com/PriticaAruldas/DITA-OT-CUSTOM-Plugin/tree/master/Screens)