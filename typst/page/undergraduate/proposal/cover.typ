#let f_content(
  Type: "",
  StudentName: "",
  StudentID: "",
) = {
  // TODO
  //\cleardoublepage{}

  // QUESTION I don't know what's this for, seems meaningless
  h(40mm) 

  align(center)[
    #box(
      width: 70%, // TODO I don't know how to set to half of paperwidth
      image("../../../figure/logo/zjuchar.svg")
    )
  ]

  align(center)[
    // \zihao{-1} \heiti \bfseries
    #if Type == "thesis" {
      [本~~科~~生~~毕~~业~~论~~文]
      v(24pt)
      [文献综述和开题报告]
    } else {
      [本~~科~~生~~毕~~业~~设~~计]
      v(24pt)
      [开题报告]
    }
  ]

  v(40pt)

  align(center)[
    #box(
      width: 24%, // TODO I don't know how to set to 0.17 of paperwidth
      image("../../../figure/logo/zju.svg")
    )
  ]

  v(40pt)
  // TODO
  //\ifthenelse{\equal{\BlindReview}{true}}
  //{
  //    % in blind review
  //    \begin{center}
  //        \bfseries \zihao{3}
  //        \begin{tabularx}{.7\textwidth}{>{\fangsong}l >{\fangsong}X<{\centering}}
  //            \ifthenelse{\equal{\MajorFormat}{cs}}%
  //            {%
  //                \vspace{10.5pt} 学生姓名   & \uline{\hfill} \\
  //                \vspace{10.5pt} 学生学号   & \uline{\hfill} \\
  //                \vspace{10.5pt} 指导教师   & \uline{\hfill} \\
  //                \vspace{10.5pt} 年级与专业 & \uline{\hfill} \\
  //                所在学院   & \uline{\hfill} \\
  //            }
  //            {%
  //                姓名与学号 & \uline{\hfill} \\
  //                指导教师   & \uline{\hfill} \\
  //                年级与专业 & \uline{\hfill} \\
  //                所在学院   & \uline{\hfill} \\
  //            }
  //        \end{tabularx}
  //    \end{center}
  //}
  {
    // not in blind review
    align(center)[
      // TODO \bfseries \zihao{3}
      // TODO 
      //\begin{tabularx}{.7\textwidth}{>{\fangsong}l >{\fangsong}X<{\centering}}
      // I don't know how wide it should be
      #box(width: 90%)[
        #grid(
          columns: (40pt, 1fr),
        //  \ifthenelse{\equal{\MajorFormat}{cs}}%
        //  {%
        //    \vspace{10.5pt} 学生姓名   & \uline{\hfill \StudentName \hfill} \\
        //    \vspace{10.5pt} 学生学号   & \uline{\hfill \StudentID \hfill} \\
        //    \vspace{10.5pt} 指导教师   & \uline{\hfill \AdvisorName \hfill} \\
        //    \vspace{10.5pt} 年级与专业 & \uline{\hfill \mbox{\Grade}级\Major \hfill} \\
        //    所在学院   & \uline{\hfill \Department \hfill} \\
        //  }
          ..if false {

          } else {
            (
              [姓名与学号],
              underline[
                // I don't know why this automatically puts itself in the center, 
                // so hfills omitted. But underline in the remaining sapce is a 
                // problem.
                #StudentName~#StudentID
              ]
            )
            //指导教师   //& \uline{\hfill \AdvisorName \hfill}            \\
            //\ifthenelse{\equal{\MajorLines}{1}}
            //{%   MajorLines == 1
            //年级与专业    &  \uline{\hfill \mbox{\Grade}级\Major \hfill} \\
            //}
            //{%   MajorLines == 2
            //年级与专业    &  \uline{\hfill \mbox{\Grade}级\MajorLineOne \hfill} \\
            //            &  \uline{\hfill \MajorLineTwo \hfill} \\
            //}
            //\ifthenelse{\equal{\DepartmentLines}{1}}
            //{%   DepartmentLines == 1
            //所在学院    &  \uline{\hfill \Department \hfill} \\
            //}
            //{%   DepartmentLines == 2
            //所在学院    &  \uline{\hfill \DepartmentLineOne \hfill} \\
            //            &  \uline{\hfill \DepartmentLineTwo \hfill} \\
            //}
          }
        )
      //\end{tabularx}
      ]
    ]
  }
}
