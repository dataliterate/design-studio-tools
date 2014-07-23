A set of clickable commands to work with [sketchtool](http://bohemiancoding.com/sketch/tool/).

## Prerequisites
skechtool installed on your system and config in your PATH variable

Test:
```
which sketchtool
```

Place the command file in the folder where your sketch files live.

## export-all.command

exports all artboards of all sketch files in the folder

convention: if artboard name contains a - 'dash', its interpreted as directors path

a artboard named iphone-main-index will be exported to the following folder structure

```
- iphone
-- main
--- index.png
```