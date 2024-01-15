// TODO: convert fully to typst
// // common commands
// 
// \newcommand{\ifbooltrue}[2]{\ifthenelse{\boolean{#1}}{#2}{}}
// \newcommand{\ifboolfalse}[2]{\ifthenelse{\boolean{#1}}{}{#2}}
// 

// Commands to input body pages
#let commands(
  Degree: "",
  Type: "",
  TwoSide: true,
  Language: "chinese",
  ..args,
) = {
  let clearpage = () => pagebreak()
  (
    clearpage: clearpage,
    cleardoublepage: () => if TwoSide {
        // TwoSide settings
        // Line below from https://github.com/nju-lug/nju-thesis-typst/templates/acknowledgement.typ, OrangeX4, MIT
        pagebreak(weak: true, to: if TwoSide { "odd" }) 
        // I don't know whether we should pass weak here
      } else { 
        // OneSide settings
        clearpage()
      }, 

    // TODO
    // Built-in latex func re-impl 
    tableofcontents: () => {
      outline(
        title: if Language == "chinese" {
          "目录"
        } else {
          "List of Contents"
        }
      )
    },
  // \newcommand{\bful}[1]{{\bfseries\uline{#1}}}
  ) + if Degree == "undergraduate" {
    (
      inputpage: (
        period,
        filename,
      ) => {
        // Arguments
        //    period [final|proposal]
        //    filename [filename.typ]
        // Directory structure:
        // graduate/undergraduate            [Degree     ] [required        ]
        // |-- major
        //     |-- general/cs/math/...       [MajorFormat] [optional        ]
        //         |-- cover.typ/toc.typ/... [typ Files  ] [template defined]
        //
        // Search from bottom-level to top-level:
        // E.g:
        //     With such dir:
        //     undergraduate
        //     |-- cover.typ
        //     |-- toc.typ
        //     |-- abstract.typ
        //     |-- major
        //         |-- ee
        //             |-- abstract.typ
        //     The input files are:
        //         undergraduate/cover.typ
        //         undergraduate/toc.typ
        //         undergraduate/major/ee/abstract.typ
        // TODO I don't know how to check this in typst
        //\IfFileExists{./page/undergraduate/#1/major/\MajorFormat/#2}
        //{
        //    \input{./page/undergraduate/#1/major/\MajorFormat/#2}
        //}
        {
          import "../page/undergraduate/" + period + "/" + filename + ".typ": f_content
          f_content(
            Degree: Degree,
            Type: Type,
            TwoSide: TwoSide,
            ..args
          ) 
        }
      },
      signature: (content) => {
      [搁着签字]
      // TODO
      // \newcommand{\signature}[1]
      // {
      //     \begin{flushright}
      //         \bfseries \zihao{-4}
      //         #1 \underline{\multido{}{5}{\quad}} \\
      //         \quad 年 \quad 月 \quad 日
      //     \end{flushright}
      // }
      },
    ) + (
      inputbody: (file) => {
        // \newcommand{\inputbody}[1]{\input{./body/undergraduate/#1}}
        include "./body/undergraduate/" + file
      }
    )

  //    // TODO: how to switch to \section* without breaking current formats?
  //    \newcommand{\chapternonum}[1]
  //    {
  //        \cleardoublepage
  //        \phantomsection
  //        \addcontentsline{toc}{chapter}{#1}
  //        \begin{center}
  //            \bfseries \zihao{3} #1	
  //        \end{center}	
  //        \setcounter{section}{0}
  //    }

  //    \newcommand{\sectionnonum}[2][openright]
  //    {
  //
  //        \ifthenelse{\equal{\TwoSide}{true}}{
  //            \ifthenelse{\equal{#1}{openright}}
  //                {\cleardoublepage}
  //                {\ifthenelse{\equal{#1}{openany}}{\clearpage}{}}
  //        }{
  //            \ifthenelse{\equal{#1}{openright}}
  //                {\clearpage}
  //                {\ifthenelse{\equal{#1}{openany}}{\clearpage}{}}
  //        }
  //        \phantomsection
  //        \addcontentsline{toc}{section}{#2}
  //        \begin{center}
  //            \bfseries \zihao{3} #2	
  //        \end{center}	
  //        \setcounter{subsection}{0}
  //    }
  }
// else {
//     // graduate
//     \newcommand{\checkandinput}[2]
//     {
//         // Directory structure:
//         // graduate/undergraduate            [Degree     ] [required        ]
//         // |-- master/doctor                 [GradLevel  ] [optional        ]
//         //     |-- general/cs/math/...       [MajorFormat] [optional        ]
//         //         |-- cover.tex/toc.tex/... [TeX Files  ] [template defined]
//         //
//         // Search from bottom-level to top-level:
//         // E.g:
//         //     With such dir:
//         //     graduate
//         //     |-- cover.tex
//         //     |-- toc.tex
//         //     |-- abstract.tex
//         //     |-- master
//         //         |-- toc.tex
//         //         |-- math
//         //             |-- abstract.tex
//         //     The input files are:
//         //         graduate/cover.tex
//         //         graduate/master/toc.tex
//         //         graduate/master/math/abstract.tex
//         \IfFileExists{./#1/graduate/\GradLevel/\MajorFormat/#2}
//         {
//             \input{./#1/graduate/\GradLevel/\MajorFormat/#2}
//         }
//         {
//             \IfFileExists{./#1/graduate/\GradLevel/#2}
//             {
//                 \input{./#1/graduate/\GradLevel/#2}
//             }
//             {
//                 \input{./#1/graduate/#2}
//             }
//         }
//     }
// 
//     \newcommand{\inputpage}[1]
//     {
//         \checkandinput{page}{#1}
//     }
//     
//     
//     \newcommand{\inputbody}[1]
//     {
//         \checkandinput{body}{#1}
//     }
// 
//     \newcommand{\chapternonum}[1]
//     {
//         \phantomsection
//         \addcontentsline{toc}{chapter}{#1}
//         \markboth{#1}{#1}
//         \chapter*{#1}
//     }
// 
//     \newcommand{\sectionnonum}[1]
//     {
//         \phantomsection
//         \addcontentsline{toc}{section}{#1}
//         \section*{#1}
//     }
// }
// 
// \ifthenelse{\equal{\Degree}{undergraduate}}
// {
// 
// \DeclareDocumentCommand{\finaleval}{O{~} O{~} O{~} O{~} O{~}}
// {
//     \begin{table}[H]
//         \centering \bfseries
//         \begin{tabularx}{\textwidth}{|>{\fangsong}c
//                                      |>{\fangsong}X<{\centering}
//                                      |>{\fangsong}X<{\centering}
//                                      |>{\fangsong}X<{\centering}
//                                      |>{\fangsong}X<{\centering}
//                                      |>{\fangsong}c|}
//             \hline
//             \makecell{成绩\\比例}
//             & \makecell{\ifthenelse{\equal{\Type}{thesis}}{文献综述}{中期报告} \\（10\//）}
//             & \makecell{开题报告\\（15\//）}
//             & \makecell{外文翻译\\（5\//）}
//             & \ifthenelse{\equal{\Type}{thesis}}{毕业论文质量及答辩（70\//）}{毕业设计质量及答辩（70\%）}
//             & \makecell{总评\\成绩} \\
// 
//             \hline
//             \multirow{2}*{分值}
//             & \multirow{2}*{\zihao{4}#1}
//             & \multirow{2}*{\zihao{4}#2}
//             & \multirow{2}*{\zihao{4}#3}
//             & \multirow{2}*{\zihao{4}#4}
//             & \multirow{2}*{\zihao{4}#5} \\
// 
//             ~ & ~ & ~ & ~ & ~ & ~ \\
//             \hline
//         \end{tabularx}
//     \end{table}
// }
// 
// // `design` commands
// \DeclareDocumentCommand{\designproposaleval}{O{~} O{~}}
// {
//     \begin{flushright}
//         \begin{tabular}{| >{\fangsong \zihao{4}}c
//                         | >{\fangsong \zihao{5}}c
//                         | >{\fangsong \zihao{5}}c |}
//             \hline
//             \multirow{2}*{成绩比例}
//             & 开题报告
//             & 外文翻译 \\
// 
//             ~
//             & 占（15\//）
//             & 占（5\//） \\
// 
//             \hline
// 
//             \multirow{2}*{分值}
//             & \multirow{2}*{\zihao{4}#1}
//             & \multirow{2}*{\zihao{4}#2} \\
//             
//             ~
//             & ~
//             & ~ \\
//             \hline
//         \end{tabular}
//     \end{flushright}
// }
// 
// \DeclareDocumentCommand{\designmidcheckeval}{O{~}}
// {
//     \begin{flushright}
//         \begin{tabular}{| >{\fangsong \zihao{4}}c
//                         | >{\fangsong \zihao{5}}c |}
//             \hline
//             \multirow{2}*{成绩比例}
//             & 中期报告 \\
// 
//             ~
//             & （10\//） \\
// 
//             \hline
// 
//             \multirow{2}*{分值}
//             & \multirow{2}*{\zihao{4}#1} \\
// 
//             ~
//             & ~ \\
//             \hline
//         \end{tabular}
//     \end{flushright}
// }
// 
// // `thesis` commands
// \DeclareDocumentCommand{\thesisproposaleval}{O{~} O{~} O{~}}
// {
//     \begin{flushright}
//         \begin{tabular}{| >{\fangsong \zihao{4}}c
//                         | >{\fangsong \zihao{5}}c
//                         | >{\fangsong \zihao{5}}c
//                         | >{\fangsong \zihao{5}}c |}
//             \hline
//             \multirow{2}*{成绩比例}
//             & 文献综述
//             & 开题报告
//             & 外文翻译 \\
// 
//             ~
//             & 占（10\//）
//             & 占（15\//）
//             & 占（5\//） \\
// 
//             \hline
// 
//             \multirow{2}*{分值}
//             & \multirow{2}*{\zihao{4}#1}
//             & \multirow{2}*{\zihao{4}#2}
//             & \multirow{2}*{\zihao{4}#3} \\
// 
//             ~
//             & ~
//             & ~
//             & ~ \\
//             \hline
//         \end{tabular}
//     \end{flushright}
// }
// }
// {}
// 
// // From: https://tex.stackexchange.com/questions/395856/switching-tocdepth-in-the-middle-of-a-document
// \newcommand{\changelocaltocdepth}[1]{//
//   \addtocontents{toc}{\protect\setcounter{tocdepth}{#1}}//
//   \setcounter{tocdepth}{#1}//
// }
}
