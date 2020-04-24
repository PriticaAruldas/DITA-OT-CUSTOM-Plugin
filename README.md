# DITA-OT-CUSTOM-Plugin

This project represents a **DITA-OT PDF** customization plugin used to generate the DITAxPresso in the PDF format. It was tested with the **DITA-OT 3.3** processor.

Project organization:

1. cfg - This folder contains the XSLT customization stylesheets, XML catalog, and font configuration.
2. plugin.xml - The plugin descriptor file.
3. build.xml, integrator.xml- These files are plugin build files.
4. AdditionalParameters - This file contains the additional parameters used for customizing the chapter name and numbers.

To use the plugin, use the following steps using command line:
1. Download DITA-OT 3.3.2
2. Download the ZIP archive associated with this project by using the Clone or download button.
3. Install the plugin by running the command ``dita-ot-dir/bin/dita --install=plug-in-zip``.
4. Invoke the PDF transformation using the **cust-pdf** transtype in a command, as in the following example:

    dita --input=BookMap.ditamap --output=plugin_output --format=cust-pdf


# ABOUT PLUGIN
    # Frontmatter
        The Frontmatter Page Contains values:
        - Background Image
        - Company Logo
        - BookTitle and SubTitle
        
    # Chapter
        It contains:
        - Title - Title on Left Side.
        - Chapter minitoc:
            It Contains possible values:
                - block - The block contains chapter links with chapter descriptions displayed one after the other.
        - Topic Title - It contains the topic title on left side and followed by the topic description and sub topics.
    # Header
    The Header contains the Chapter name and page number.
        - Even Pages- Contains the page number first and the chapter title on the left side.
        - Odd Pages Contains the chapter title first and the page number on the right side.
    
    # Backmatter
        The Backmatter page contains:
         - The Logo on the top left on the page.
         - The Organization name and address at the center of the page.
        
        
