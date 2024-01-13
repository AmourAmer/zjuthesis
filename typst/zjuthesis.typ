// Zhejiang University Graduation Thesis/Design Template
// Author     : Zixuan Wang
// Email      : zxwang42 [at] gmail.com
// Update     : https://github.com/TheNetAdmin/zjuthesis/releases
// Discussion : https://github.com/TheNetAdmin/zjuthesis/discussions
// Documents  : https://thenetadmin.github.io/zjuthesis

// If you have trouble using this template, please:
//   1. First go through the online documentations mentioned above, to see if 
//      there're already solutions.
//   2. Go through GitHub Issue list, to see if there're discussions on similar
//      problems
//   3. Open a GitHub Issue to discuss with developers
//   4. If you don't know how to use GitHub, you can send me an email

#import "template.typ": zjuthesis
#let input = zjuthesis(
  // Debugging Settings
  PrintFilePath   : false,            // print tex file path for each page
  // Layout Settings
  TwoSide         : true,             // set to false if don't need empty pages
  // Thesis Info
  StudentName     : "姓名",
  StudentID       : "学号",
  AdvisorName     : "指导教师",
  Grade           : "2020",            // only the year, no '级'
  Major           : ("专业", ""),      // Two-line major if second string non empty
  Department      : ("学院", ""),      // Two-line department if second string non empty
  SubmitDate      : "递交日期",
  MajorFormat     : "general",
  Degree          : "undergraduate",   // 'undergraduate' or 'graduate'
  Type            : "thesis",          // 'thesis'   or 'design'
  // Period          : "proposal",           // 'proposal' or 'paper' or 'final' // TODO commented for dev purpose
  BlindReview     : false,           // 'false'    or 'true'
  Language        : "chinese",         // 'chinese'  or 'english'
  // Graduate Thesis Info
  GradLevel       : "master",          // 'master' or 'doctor'
  Topic           : "研究方向",
  ColaboratorName : "合作导师",
  // Table of Contents
  ListOfContents  : true,
  ListOfFigures   : true,
  ListOfTables    : true,
  ListOfAlgorithms: false,
  // Title
  Title           : "毕业论文/设计题目",
  TitleEng        : "{{Graduation Thesis Title}}"
)

// TODO
// Uncomment the following lines if you need multi line titles on cover pages
// \titletwolines{毕业论文题目第一行}{毕业论文题目第二行}
// \titleengtwolines{English Title Line One}{English Title Line Two}
// \titlethreelines{毕业论文题目第一行}{毕业论文题目第二行}{毕业论文题目第三行}
// \titleengthreelines{English Title Line One}{English Title Line Two}{English Title Line Three}

// TODO
// Uncomment the following lines if you need multi line major names on cover pages
// \majortwolines{专业名第一行}{专业名第二行}

// TODO
// Uncomment the following lines if you need multi line department names on cover pages
// \departmenttwolines{学院名第一行}{学院名第二行}


// TODO
// \newcommand{\inputgraduate}
// {
//     \coverstyle
//     \inputpage{cover}
// 
//     \prevstyle
//     \inputpage{previous}
//     \inputpage{toc}
//     
//     // Main contents
//     \bodystyle
//     \inputbody{content}
// 
//     // Post part
//     \poststyle
//     \inputbody{post}
// }

#input()
