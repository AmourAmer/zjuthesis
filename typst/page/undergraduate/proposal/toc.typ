#import "../../../config/commands.typ": commands

#let f_content(
  ..args
) = {
  let (clearpage, tableofcontents, cleardoublepage,) = commands(
    ..args
  )
  cleardoublepage()
  tableofcontents()
  clearpage()
}
