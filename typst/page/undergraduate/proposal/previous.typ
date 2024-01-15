#import "../../../config/commands.typ": commands

#let f_content(
  Type: "",
  ..args
) = {
  // 好奇怪啊，这样重复是合适的么？
  let (cleardoublepage, inputpage,) = commands(
    Type: Type,
    ..args
  )
  cleardoublepage()
  inputpage("proposal", Type + "/previous")
}
