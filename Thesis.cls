%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newwrite\dotfile

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}

\usepackage[a4paper]{geometry}
  \geometry{verbose,tmargin=3.5cm,bmargin=3.5cm,lmargin=3.5cm,rmargin=2.5cm}
  \setlength{\headheight}{20pt}
  \setlength{\headsep}{0.25in}
  \setlength{\footskip}{0.3in}

\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace,fontspec,xunicode,xltxtra}

\usepackage{algorithmic}

\setmainfont[Mapping=tex-text]{Palatino Linotype}
\setsansfont[Mapping=tex-text]{Verdana}
\setmonofont[Mapping=tex-text]{Consolas}

\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}

%\usepackage[dvips]{graphicx}
\input{graphviz}

%\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
  unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {Dr. Michał Chlebiej}
\degree      {Master of Science}
\authors     {Tomasz Stachowiak}
\university  {\texorpdfstring{\href{http://www.umk.pl/}
                {Nicolaus Copernicus University}}
                {Nicolaus Copernicus University}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.umk.pl/}
                {NICOLAUS COPERNICUS UNIVERSITY}}
                {NICOLAUS COPERNICUS UNIVERSITY)}}
\department  {\texorpdfstring{\href{http://www.mat.umk.pl/}
                {Departament of Mathematics and Computer Science}}
                {Departament of Mathematics and Computer Science}}
\DEPARTMENT  {\texorpdfstring{\href{http://www.mat.umk.pl/}
                {DEPARTAMENT OF MATHEMATICS AND COMPUTER SCIENCE}}
                {DEPARTAMENT OF MATHEMATICS AND COMPUTER SCIENCE}}
\faculty     {\texorpdfstring{\href{http://www.mat.umk.pl/web/zorir/zorir}
                {Zakład Obliczeń Równoległych i Rozproszonych}}
                {Zakład Obliczeń Równoległych i Rozproszonych}}
\FACULTY     {\texorpdfstring{\href{http://www.mat.umk.pl/web/zorir/zorir}
                {ZAKŁAD OBLICZEŃ RÓWNOLEGŁYCH I ROZPROSZONYCH}}
                {ZAKŁAD OBLICZEŃ RÓWNOLEGŁYCH I ROZPROSZONYCH}}
\addresses   {}
\subject     {}
\keywords    {real-time, rendering, Nucleus, GPU, shading, graphics}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}

  \begin{titlepage}
    \setlength{\parskip}{0.0ex}

    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}

\begin{onehalfspace}
\begin{center}
{\huge Uniwersystet Mikołaja Kopernika}\\
{\huge Wydział Matematyki i Informatyki}\\
{\huge Zakład Obliczeń Równoległych}\\
{\huge i Rozproszonych}
\par\end{center}{\huge \par}

\begin{center}
\vspace{0.5in}
{\LARGE Tomasz Stachowiak}{\Large }\\
nr albumu: 187455\\
{\small \vspace{0.5in}
}{\Large Praca magisterska}\\
{\Large na kierunku informatyka}
\par\end{center}{\large \par}

\begin{center}
\vspace{0.5in}
\textbf{\Huge \@title}
\par\end{center}{\Huge \par}
\end{onehalfspace}

\begin{onehalfspace}
\begin{flushright}
\vspace{0.2in}
\begin{minipage}[t]{0.6\columnwidth}%
\begin{flushleft}
{\Large Opiekun pracy dyplomowej}\\
{\Large dr Michał Chlebiej}\\
{\Large Zakład Obliczeń Równoległych}\\
{\Large i Rozproszonych}
\par\end{flushleft}%
\end{minipage}
\par\end{flushright}{\large \par}
\end{onehalfspace}

\begin{onehalfspace}
\begin{center}
\vfill
{\Large Toruń 2010}
\par\end{center}{\large \par}
\end{onehalfspace}

\begin{onehalfspace}
\vspace{0.2in}
%
\begin{minipage}[t]{0.33\columnwidth}%
\begin{center}
{\small Pracę przyjmuję i akceptuję}\\
\vspace{0.3in}
...................................................\\
\textit{\footnotesize data i podpis opiekuna pracy}
\par\end{center}%
\end{minipage}\hfill{}%
\begin{minipage}[t]{0.4\columnwidth}%
\begin{center}
{\small Potwierdzam złożenie pracy dyplomowej}\\
\vspace{0.3in}
.................................................\\
\textit{\footnotesize data i podpis pracownika dziekanatu}
\par\end{center}%
\end{minipage}\end{onehalfspace}


    \setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{plain}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\huge{\textit{Abstract}} \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\pagestyle{plain}
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newenvironment{acknowledgements}
{
  \btypeout{Acknowledgements}
  \thispagestyle{plain}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\huge{\textit{Acknowledgements}} \par}
    \bigskip
  \end{center}
}

\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis.cls'.
