#import "../../../config/commands.typ": commands

#let f_content(
  Type: "",
  ..args
) = {
  let (cleardoublepage, inputbody,) = commands(
    Type: Type,
    ..args
  )
  cleardoublepage()

  if Type == "thesis" {
    // `thesis` content
    inputbody("proposal/review/review")
    inputbody("proposal/proposal/proposal")
    // \inputbody("proposal/translation/translation")
    // \inputbody("proposal/original/original")
  } else if Type == "design" {
    // `design` content
    // \inputbody("proposal/proposal/proposal")
    // \inputbody("proposal/translation/translation")
    // \inputbody("proposal/original/original")
    // \inputbody("proposal/midcheck/midcheck")
  } else {
    // Wrong Input
  }
}
