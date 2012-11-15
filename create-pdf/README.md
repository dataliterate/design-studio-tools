# Create Pdf

Create Pdf is an Automator Action for OS X, that lives as Service in the Finder context menu.
It generates a single pdf file out of many images in one folder. The generated pdf is saved into the images folder and named after the name of the folder.

# Usage

Imaginge you have a folder called "alpha-project" on you desktop. Inside this folder are several .png files with different drafts that you want to send out to a client.

* Open the folder "alpha-project"
* Select the png files
* Right click, then click on Services -> Create Pdf
* You will then find a file called alpha-project.pdf inside the "alpha-project" folder
* _Attention_ The Action will overwrite an existion file that is called alpha-project.pdf

# Installation

via command line
```
curl https://raw.github.com/preciousforever/design-studio-tools/master/create-pdf/Create%20Pdf.workflow.zip > ~/Library/Services/Create\ Pdf.workflow.zip
open ~/Library/Services/Create\ Pdf.workflow.zip
rm ~/Library/Services/Create\ Pdf.workflow.zip
```

by Hand

* Download and Unzip [Create%20Pdf.workflow.zip](https://raw.github.com/preciousforever/design-studio-tools/master/create-pdf/Create%20Pdf.workflow.zip)
* copy the Create Pdf.workflow File to /Users/your_usernmae/Library/Services/


