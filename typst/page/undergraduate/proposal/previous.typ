#import "../../../config/commands.typ": commands

#let f_content(
  Type: "",
  ..args
) = {
  // 好奇怪啊，这样重复是合适的么？
  let (inputpage,) = commands(
    Type: Type,
    ..args
  )
  // TODO \cleardoublepage
  inputpage("proposal", Type + "/previous")
}
