\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uowphd}[2010/08/31 PhD Thesis at the University of Waikato]

\newif\ifATfin@l         
\ATfin@lfalse  
\DeclareOption{final}{\ATfin@ltrue}

\ProcessOptions\relax

\RequirePackage[T1]{fontenc}

% don't use bera if you're using math mode
% in that case, use something like Bitstream Charter instead:
% \RequirePackage[bitstream-charter]{mathdesign}
\RequirePackage{bera}

\RequirePackage{setspace}

\ifATfin@l
\LoadClass[twoside,12pt,a4paper,chapterprefix,appendixprefix,bigheadings,pointlessnumbers,bibtotoc,cleardoubleplain,listsleft]{scrbook}
\onehalfspacing
\RequirePackage{geometry}
\geometry{inner=40mm,outer=30mm,top=22mm,bottom=25mm,includehead,includefoot}
\else
% save some space if this isn't the final version
\LoadClass[twoside,12pt,a4paper,nochapterprefix,noappendixprefix,notitlepage,bigheadings,pointlessnumbers,bibtotoc,listsleft]{scrbook}
\onehalfspacing
\RequirePackage{geometry}
\geometry{inner=40mm,outer=30mm,top=22mm,bottom=25mm,includehead,includefoot}
\fi

% format of references
\RequirePackage[longnamesfirst]{natbib}
\bibpunct{(}{)}{;}{a}{,}{,}
\bibliographystyle{uowphd}

% for titlepage
\def\@copyrightyear{}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}

% fonts
\addtokomafont{pagehead}{\rmfamily\itshape} % does the same for pagefoot
                                % except for page number
\addtokomafont{sectioning}{\rmfamily\mdseries\singlespacing}
\addtokomafont{subsubsection}{\itshape\large}
\addtokomafont{paragraph}{\itshape}
\addtokomafont{descriptionlabel}{\rmfamily\mdseries\itshape}
\addtokomafont{captionlabel}{\mdseries\itshape}
\addtokomafont{caption}{\small}
\setkomafont{captionlabel}{\bfseries}
% formatting of figure/table captions
\renewcommand*{\captionformat}{:~}

\ifATfin@l
\RequirePackage{graphicx}
\renewcommand{\maketitle}{%
  \thispagestyle{empty}%
  \begin{center}\sffamily%
    \vfill%
    \begin{spacing}{2.3}
    \textbf{\Huge\@title}\\%     
    \end{spacing}
    \vfill%
    \vfill%
    A thesis\\%
    submitted in partial fulfillment\\%
    of the requirements for the degree\\%
    of\\[0.5ex]%
    \textbf{\large Doctor of Philosophy}\\%
    \vfill%
    at\\[0.5ex]%
    \textbf{\large The University of Waikato}\\%
    \vfill%
    by\\[1ex]%
    \textbf{\Large\@author}\\%
    \vfill%
    \vfill%
    \rule{2cm}{0.5pt}
    \vfill%
    \vfill%
    \includegraphics[height=2cm]{images/UoW-logo}\\%
    {\small Department of Computer Science\\%
    Hamilton, New Zealand\\%
    \@date%
    \vfill%
    \copyright\ \@copyrightyear\ \@author}\\%
    \vfill%
  \end{center}%
  \cleardoubleemptypage%
  \ifx \@dedication \@empty \relax \else
    \thispagestyle{empty}%
    \begin{flushright}%
      \emph{\@dedication}%
    \end{flushright}%
    \cleardoubleemptypage%
  \fi
}
\else
\renewcommand{\maketitle}{\relax}
\fi
\endinput

\typearea[current]{current}
