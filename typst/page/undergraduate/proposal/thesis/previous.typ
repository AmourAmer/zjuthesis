#import "../../../../config/commands.typ": commands

#let f_content(
  ..args
) = {
  let (signature,) = commands(
    ..args
  )

  [题目，要求，下次再说]
  // TODO
  //{
  //    \setlength{\parindent}{0em}
  //    \par {\zihao{4}\bfseries 一、题目：\Title}
  //    \\
  //    \par {\zihao{4}\bfseries 二、指导教师对文献综述、开题报告、外文翻译的具体要求：}
  //}

  v(1fr)

  signature[指导教师（签名）]
}
