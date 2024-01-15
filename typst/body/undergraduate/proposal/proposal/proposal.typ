#import "../../../../config/commands.typ": commands

#let (cleardoublepage, inputbody,) = commands()
#cleardoublepage()
// \newrefsection
= 开题报告

// TODO
\inputbody{proposal/proposal/background}
\inputbody{proposal/proposal/content}
\inputbody{proposal/proposal/plan}

\newpage
\begingroup
    \linespreadsingle{}
    \printbibliography[title={参考文献}]
\endgroup
