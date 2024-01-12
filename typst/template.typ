// Inspired by https://github.com/nju-lug/nju-thesis-typst/{nju-thesis/template.typ,thesis.typ}
#let inputundergraduate(
  info: (:)
) = {
    let Period = info.Period
    // TODO, use real things instead
    if Period == "final" {
    //     // Final thesis
    //     // Final part
    //     \newcommand{\undergradcurrstage}{final}
    //     \newrefsection
    //     
    //     \coverstyle
    //     \inputpage{final}{cover}

    //     \prevstyle
    //     \inputpage{final}{previous}
    //     \inputpage{final}{toc}

    //     \bodystyle
    //     \inputpage{final}{cover-part}

    //     \resetpagecounter{}
    //     \inputbody{final/content}
    //     \inputbody{final/post}

    //     \poststyle
    //     \inputpage{final}{post}

    //     // Proposal part
    //     \renewcommand{\undergradcurrstage}{proposal}
    //     \newrefsection

    //     \coverstyle
    //     \inputpage{proposal}{cover-part}
    //     \inputpage{proposal}{cover}
    //     \inputpage{proposal}{previous}
    //     
    //     \bodystyle
    //     \inputbody{proposal/content}

    //     \poststyle
    //     \inputpage{proposal}{post}
    } else if Period == "proposal" {
       // Thesis proposal
    //     \newcommand{\undergradcurrstage}{proposal}

    //     \coverstyle
    //     \inputpage{proposal}{cover}
    // 
    //     // 'proposal' previous part uses 'empty' page style,
    //     // as shown in cs undergrad template.
    //     \inputpage{proposal}{previous}
    //     
    //     \prevstyle
    //     \inputpage{proposal}{toc}
    // 
    //     \bodystyle
    //     \inputbody{proposal/content}
    //     
    //     \poststyle
    //     \inputpage{proposal}{post}
    } else if Period == "paper" {
    // {
    //     // paper only part
    //     \newcommand{\undergradcurrstage}{paper}
    //     \newrefsection
    //     
    //     \coverstyle
    //     \inputpage{final}{cover}

    //     \prevstyle
    //     \inputpage{final}{previous}
    //     \inputpage{final}{toc}

    //     \bodystyle
    //     \inputpage{final}{cover-part}
    //     \cleardoublepage
    //     
    //     \inputbody{final/content}
    //     \inputbody{final/post}

    //     \poststyle
    //     \inputpage{final}{post}
    // }
    }
}

#let inputgraduate = {
    // TODO, use real things instead
    // {
    // \coverstyle
    // \inputpage{cover}

    // \prevstyle
    // \inputpage{previous}
    // \inputpage{toc}
    // 
    // // Main contents
    // \bodystyle
    // \inputbody{content}

    // // Post part
    // \poststyle
    // \inputbody{post}
    //}
}
#let zjuthesis(
  info: (:)
) = {
  if info.Degree == "undergraduate" {
    inputundergraduate(info: info)
  } else {
    inputgraduate(info: info)
  }  
}

// TODO impl zjuthesis.cls

