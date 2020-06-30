%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% BASED ON progbookcn - Yet Another LaTeX Template for Programming or Technical Books
%% WisdomFusion@gmail.com
%% Jun, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{progbookcn}[Jun, 2018 Yet Another LaTeX Template for Programming or Technical Books]
\LoadClass[a4paper,twoside,fontset=none]{ctexbook}

\RequirePackage{xunicode}
\RequirePackage[dvipsnames]{xcolor}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% hyperref settings
%% 超链接设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyperref}
\hypersetup{
  bookmarksnumbered,
  colorlinks,
  linkcolor={black},
  citecolor={black},
  urlcolor={black}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% geometry settings
%% 页面设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{
  textwidth=138mm,
  textheight=215mm,
  %% left=27mm,
  %% or
  inner=23mm,
  %% right=27mm,
  %% or
  outer=18mm,
  top=25.4mm, bottom=25.4mm,
  headheight=2.17cm,
  headsep=4mm,
  footskip=12mm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% fonts settings
%% 字体设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
%% \usepackage{ebgaramond}



\setmainfont[Ligatures=TeX]{Times New Roman}
\setsansfont{Arial}
\setmonofont{Consolas}
 
\setCJKmainfont[BoldFont={等线},ItalicFont={宋体}]{宋体}
\setCJKsansfont{等线}
\setCJKmonofont{宋体}
\setCJKfamilyfont{song}{宋体}
\setCJKfamilyfont{pingfang}{微软雅黑}
\setCJKfamilyfont{huasong}{宋体}
\setCJKfamilyfont{dongqinghei}{黑体}
\setCJKfamilyfont{hei}{等线}
\setCJKfamilyfont{hwfangsong}{仿宋}
\setCJKfamilyfont{huawenheiti}{等线}
\setCJKfamilyfont{kaiti}{楷体}


\newcommand*{\songti}{\CJKfamily{song}} % 宋体
\newcommand*{\heiti}{\CJKfamily{hei}} % 黑体
\newcommand*{\dqhei}{\CJKfamily{dongqinghei}} % 冬青黑体
\newcommand*{\pfhei}{\CJKfamily{pingfang}} % 苹方黑体
\newcommand*{\hwsong}{\CJKfamily{huasong}}    % 华文宋
\newcommand*{\fangsong}{\CJKfamily{hwfangsong}}    % 华文仿宋
\newcommand*{\hwhei}{\CJKfamily{huawenheiti}}    % 华文黑体
\newcommand*{\kai}{\CJKfamily{kaiti}}    % 楷体

%\setmainfont[Ligatures=TeX]{STSongti-SC-Regular}
%\setsansfont{STHeiti}
%\setmonofont{STSongti-SC-Regular}
 
%\setCJKmainfont[BoldFont={STHeiti},ItalicFont={STSongti-SC-Regular}]{STSongti-SC-Regular}
%\setCJKsansfont{STHeiti}
%\setCJKmonofont{STSongti-SC-Regular}
%\setCJKfamilyfont{song}{STSongti-SC-Regular}
%\setCJKfamilyfont{pingfang}{PingFangSC-Regular}
%\setCJKfamilyfont{huasong}{STSong}
%\setCJKfamilyfont{dongqinghei}{HiraginoSansGB-W3}
%\setCJKfamilyfont{hei}{STHeitiSC-Light}
%\setCJKfamilyfont{hwfangsong}{STFangsong}
%\setCJKfamilyfont{huawenheiti}{STHeiti}
%\setCJKfamilyfont{kaiti}{STKaitiSC-Regular}


%\newcommand*{\songti}{\CJKfamily{song}} % 宋体
%\newcommand*{\heiti}{\CJKfamily{hei}} % 黑体
%\newcommand*{\dqhei}{\CJKfamily{dongqinghei}} % 冬青黑体
%\newcommand*{\pfhei}{\CJKfamily{pingfang}} % 苹方黑体
%\newcommand*{\hwsong}{\CJKfamily{huasong}}    % 华文宋
%\newcommand*{\fangsong}{\CJKfamily{hwfangsong}}    % 华文仿宋
%\newcommand*{\hwhei}{\CJKfamily{huawenheiti}}    % 华文黑体
%\newcommand*{\kai}{\CJKfamily{kaiti}}    % 楷体

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

%\newfontfamily\fzss{FZShuSong-Z01}
%\newfontfamily\fzxbs{FZShuSong-Z01}
%\newfontfamily\fzhei{FZHei-B01}
%\newfontfamily\fzkai{FZKai-Z03}
%\newfontfamily\fzfs{FZFangSong-Z02}
%\newfontfamily\fzzdx{FZHei-B01}
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% titlesec
%% 标题设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[clearempty]{titlesec}
\RequirePackage{zhnumber}

%% part
\titleformat{\part} % command
[display] % shape
{\bfseries} % format
{
  \zihao{4}\textsf{PART~\thepart} \hfill 第{\zhnum{part}}部分
  %\rule[3ex]{\textwidth}{.5pt}
  \vspace{1ex}
  \hrule width \hsize height .5pt
} % label
{1pt} % sep
{\vspace{-7ex}\flushright\zihao{2}} % before-code
[] % after-code

%% chapter
\titleformat{\chapter} % command
[display] % shape
{\bfseries} % format
{
  \flushright\zihao{4}第\zhnum{chapter}章
} % label
{1ex} % sep
{
  \hrule width \hsize height .5pt
  \vspace{-2ex}\flushright\zihao{2}
} % before-code
[
\vspace{5ex}
] % after-code


%% section
\titleformat{\section}
[hang]
{\rmfamily}
{\centering\zihao{-3}\bfseries\thesection\enspace}
{1pt}
{\zihao{-3}\bfseries}

%% subsection
\titleformat{\subsection}
[hang]
{\rmfamily}
{\zihao{-4}\bfseries\thesubsection\enspace}
{1pt}
{\zihao{4}\bfseries\filright}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% head and foot
%% 页眉页脚
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\RequirePackage{zhnumber}

\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{.5pt}
\futurelet\TMPfootrule\def\footrule{{\color{violet}\TMPfootrule}}

\renewcommand{\chaptermark}[1]{\markboth{第\zhnum{chapter}章\hspace{1em}#1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\hspace{1em}#1}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

\fancyfoot[LE]{\thepage\quad\vrule\quad\leftmark}
\fancyfoot[RO]{\rightmark\quad\vrule\quad\thepage}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% code listings
%% 代码块设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{listings}

\lstdefinelanguage{JavaScript}{
  keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
  morekeywords={class, export, boolean, throw, implements, import, this},
  sensitive=false,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]"
}


\colorlet{lightergray}{black!5!white}

\lstdefinestyle{mystyle}{
  % Basic design
  %backgroundcolor=\color{lightergray},
  basicstyle=\ttfamily,
  frame=tb,
  %framesep=5pt,
  framerule=.5pt,
  rulecolor=\color{violet},
  abovecaptionskip=0pt,
  belowcaptionskip=5pt,
  % Code design
  commentstyle=\color{gray},
  keywordstyle=\color{blue},
  numberstyle=\small\color{gray},
  stringstyle=\color{red},
  morekeywords={as},
  breakatwhitespace=false,
  breaklines=true,
  captionpos=t,
  keepspaces=true,
  % Line numbers
  numbers=left,
  numbersep=10pt,
  %xleftmargin=.5em,
  stepnumber=1,
  firstnumber=1,
  numberfirstline=true,
  % Code
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true,
}
\lstset{style=mystyle}


%% 代码列表标题
%% \RequirePackage{caption}
%% \DeclareCaptionFormat{codecaptionformat}{%
%%   \colorbox{black!20}{
%%     \parbox{\textwidth}{#1#2\ttfamily#3}
%%   }
%% }
%% \captionsetup[lstlisting]{format=codecaptionformat}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% boxes
%% 信息框
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[many]{tcolorbox}
\RequirePackage{fontawesome5}

%% 带标题的文本框
\newtcolorbox{titledbox}[1]{%
  tikznode boxed title,
  enhanced,
  arc=3pt,
  interior style={white},
  attach boxed title to top center = {yshift=-\tcboxedtitleheight/2},
  fonttitle=\normalfont,
  colbacktitle=white,coltitle=black,
  boxed title style={size=normal,colframe=white,boxrule=0pt},
  boxrule=.5pt,
  left=0pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  title={#1}
}

%% 信息
\newtcolorbox{information}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\textcolor{gray}{\faIcon{info-circle}}
    };
  }
}

%% 关键点
\newtcolorbox{keypoint}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\textcolor{gray}{\faIcon{key}}
    };
  }
}

%% 警告信息
\newtcolorbox{exclamation}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\textcolor{gray}{\faIcon{exclamation-triangle}}
    };
  }
}

%% 问题信息
\newtcolorbox{question}{%
  enhanced,
  arc=3pt,
  interior style={white},
  boxrule=.5pt,
  left=40pt, right=0pt, top=2pt, bottom=0pt,
  boxsep=10pt,
  colframe=violet,
  overlay={
    \node[anchor=north west,outer sep=10pt] at (frame.north west)
    {
      \zihao{2}\textcolor{gray}{\faIcon{question-circle}}
    };
  }
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chinese names
%% 中文名称
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\partname}{部分}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\appendixname}{附\hspace{1em}录}
\renewcommand{\indexname}{索\hspace{1em}引}
% listings
\renewcommand{\lstlistingname}{代码}
\renewcommand{\lstlistlistingname}{\lstlistingname 列表}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% global settings
%% 以下是全局格式设定
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 添加首行缩进，两个字符
\usepackage{indentfirst}
\setlength{\parindent}{2em}

%% 行距
\linespread{1.5}