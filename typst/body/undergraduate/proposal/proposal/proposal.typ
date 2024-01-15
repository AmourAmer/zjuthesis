#import "../../../../config/commands.typ": commands

#let f_content(
  ..args
) = {
  let (cleardoublepage, inputbody,) = commands(
    ..args
  )
  cleardoublepage()
  // \newrefsection
  [
= 开题报告

\inputbody{proposal/proposal/background}
\inputbody{proposal/proposal/content}
\inputbody{proposal/proposal/plan}

\newpage
\begingroup
    \linespreadsingle{}
    \printbibliography[title={参考文献}]
\endgroup
  ]
}
