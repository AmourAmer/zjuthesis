#let args = (
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

#let defaults = ( // check the meanings in `args.typ`
  PrintFilePath   : false,            
  TwoSide         : true,             
  StudentName     : "姓名",
  StudentID       : "学号",
  AdvisorName     : "指导教师",
  Grade           : "2020",           
  Major           : ("专业", ""),     
  Department      : ("学院", ""),     
  SubmitDate      : "递交日期",
  MajorFormat     : "general",
  Degree          : "undergraduate",  
  Type            : "thesis",         
  Period          : "proposal",    
  BlindReview     : false,           
  Language        : "chinese",        
  GradLevel       : "master",         
  Topic           : "研究方向",
  ColaboratorName : "合作导师",
  ListOfContents  : true,
  ListOfFigures   : true,
  ListOfTables    : true,
  ListOfAlgorithms: false,
  Title           : "毕业论文/设计题目",
  TitleEng        : "{{Graduation Thesis Title}}"
)
#let args = defaults + args
