#import "../../../config/commands.typ": commands

#let (args, cleardoublepage, inputpage,) = commands()
#let (Type,) = args
#cleardoublepage()
#inputpage("proposal", Type + "/previous")
