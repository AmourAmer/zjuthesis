#import "../../../config/commands.typ": commands
#let (args, cleardoublepage,) = commands()
#let (
  Type, 
  BlindReview, 
  MajorFormat, 
  StudentName, 
  StudentID, 
  AdvisorName, 
  Grade, 
  Major, 
  Department
) = args
#cleardoublepage()

// QUESTION I don't know what's this for, seems meaningless
#h(40mm) 

#align(center)[
  #box(
    width: 70%, // TODO I don't know how to set to half of paperwidth
    image("../../../figure/logo/zjuchar.svg")
  )
]

#align(center)[
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

#v(40pt)

#align(center)[
  #box(
    width: 24%, // TODO I don't know how to set to 0.17 of paperwidth
    image("../../../figure/logo/zju.svg")
  )
]

#v(40pt)
// TODO
#let uline(content) = rect(width: 100%, stroke: (bottom: black + 0.5pt), content) // 0.5pt seems ok, may not be accurate
#align(center)[
  // TODO \bfseries \zihao{3}
  // TODO \begin{tabularx}{.7\textwidth}{>{\fangsong}l >{\fangsong}X<{\centering}}
  // I don't know how wide it should be
  // TODO 这重复得也太多了！应该整成一个函数的，`name = BlindReview?"":name`之类的，没错，所以BlindReview的时候就先不处理了
  #box(width: 90%)[
    #grid(
      columns: (40pt, 1fr),
      ..if BlindReview {
        //// in blind review
        //// 感觉要么这个文件该裂开出一个page/undergraduate/proposal/major/cs/cover.typ
        //// 要么就该合并major这类文件夹
        //// 或者写一个patch
        //    \ifthenelse{\equal{\MajorFormat}{cs}}%
        //    {%
        //      \vspace{10.5pt} 学生姓名   & \uline{\hfill} \\
        //      \vspace{10.5pt} 学生学号   & \uline{\hfill} \\
        //      \vspace{10.5pt} 指导教师   & \uline{\hfill} \\
        //      \vspace{10.5pt} 年级与专业 & \uline{\hfill} \\
        //      所在学院   & \uline{\hfill} \\
        //    }
        //    {%
        //      姓名与学号 & \uline{\hfill} \\
        //      指导教师   & \uline{\hfill} \\
        //      年级与专业 & \uline{\hfill} \\
        //      所在学院   & \uline{\hfill} \\
        //    }
        //  \end{tabularx}
        //\end{center}
      } else {
        // not in blind review
        if MajorFormat == "cs" {
          // TODO not tested
          (
            [
              #v(10.5pt)
              学生姓名
            ],
            uline[
              #StudentName
            ],
            [
              #v(10.5pt)
              学生学号
            ],
            uline[
              #StudentID
            ],
            [
              #v(10.5pt)
              指导教师
            ],
            uline(AdvisorName),
            [
              #v(10.5pt)
              年级与专业
            ],
            uline[
              #box(Grade)级
              #Major.at(0)
            ],
            .. if Major.at(1).len() > 0 {
              (
                [],
                uline(Major.at(1))
              )
            },
            [所在学院],
            uline[
              #Department.at(0)
            ],
            .. if Department.at(1).len() > 0 {
              (
                [],
                uline(Department.at(1))
              )
            },
          )
          } else {
          (
            [姓名与学号],
            uline[
              // I don't know why this automatically puts itself in the center, 
              // so hfills omitted. 
              #StudentName~#StudentID
            ],
            [指导教师],
            uline(AdvisorName),
            [年级与专业],
            uline[
              #box(Grade)级
              #Major.at(0)
            ],
            .. if Major.at(1).len() > 0 {
              (
                [],
                uline(Major.at(1))
              )
            },
            [所在学院],
            uline[
              #Department.at(0)
            ],
            .. if Department.at(1).len() > 0 {
              (
                [],
                uline(Department.at(1))
              )
            },
          )
        }
      }
    )
  ]
]

