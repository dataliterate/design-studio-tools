A set of clickable commands to work with [SketchTool](http://bohemiancoding.com/sketch/tool/) for [Sketch](http://bohemiancoding.com/sketch/).

## Prerequisites
SketchTool installed on your system and config in your PATH variable

Install SketchTool like this:

- Download [SketchTool](http://bohemiancoding.com/sketch/tool/).
- in Terminal: `cd ~/Downloads/sketchtool`
- then `sudo cp -r sketch* /usr/local/bin`

To test if SketchTool is installed correctly, type in Terminal:
```
cd ~/
sketchtool help
```

Place the *.command files in the folder where your sketch files live and double click to execute them.

## export-all-artboards.command

Exports all Artboards of all Sketch files in the folder.

**Please note**: in Sketch, you can use Artboard names such as 'iphone/main/index', which will export as the following folder structure:

```
- iphone
-- main
--- index.png
```

However, when using SketchTool to export, the '/' [slash] get converted to '-' [dash], thus leading to a flat "iphone-main-index.png" file. These click commands take care of this and convert these files back into the above mentioned meaningful folder structure.

## export-all-layers.command

In Sketch, you can set a Layer Group to be 'exportable'. All exportable Layers of all Sketch files in the folder are being exported with this command (following the same naming conventions as mentioned above).

**Please note**: we usually set certain Layer Groups in Sketch to be exportable – this is pretty powerful, because it will always export the right bounds of the Layer Group and the names used to organize your Sketch files are the ones used for export, too. To be able to export the Layer Groups as PNGs into a folder with the parent Artboard's name, we created a [Sketch Plugin](https://github.com/preciousforever/sketch-artboard-name-to-layer-name). It prepends the Artboard name (= a path) to all Layers (and there's another Plugin to remove it if you're reworking the structure of your file).


