%Created by Ari Dwi Hartanto, Department of Mathematics, Universitas Gadjah Mada, Indonesia
%http://ari.staff.ugm.ac.id   |    ari@ugm.ac.id
%Copyright - Ari Dwi Hartanto | Math UGM
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{skripsimathuin}[2013/06/07 v2.0 UIN Saintek Class]

\LoadClass[a4paper,12pt]{report}
\RequirePackage[english,bahasa]{babel}
\RequirePackage{times}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{anyfontsize}
\RequirePackage{graphicx,latexsym}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amstext}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{float}
\RequirePackage{longtable}
\RequirePackage{enumerate}
\RequirePackage{multirow}
\RequirePackage[center,font=footnotesize,labelfont=bf,labelsep=space,aboveskip=1.5ex,singlelinecheck=off]{caption}
\RequirePackage{pdfpages}
\RequirePackage{tikz}
\usetikzlibrary{matrix,arrows}

\RequirePackage{natbib}
\bibliographystyle{plainnat}

\renewcommand{\baselinestretch}{1.95}
\parskip0.6em

\renewcommand{\normalsize}{\fontsize{12bp}{14bp}\selectfont}
\frenchspacing

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
\setlength{\topmargin}{0cm}
\setlength{\headheight}{0.46cm}
\setlength{\headsep}{1cm}
\setlength{\topskip}{0cm}
\setlength{\oddsidemargin}{1.46cm}
\setlength{\evensidemargin}{1.46cm}
\setlength{\textwidth}{14cm}
\setlength{\textheight}{22.7cm}
\setlength{\footskip}{1.3cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\parindent}{3em} %Indent approx 6 character

\pagestyle{myheadings}


\setcounter{secnumdepth}{2}
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.}
%\renewcommand{\thesubsubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}

\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

\usepackage{titlesec}
\titleformat{\chapter}
%[hang]
%[runin]
%[leftmargin]
[display]
{\center\large\bfseries}
{\large\MakeUppercase{\chaptertitlename} \thechapter}{-1ex}{\large}
\titlespacing{\chapter}{0cm}{-2cm}{1cm}

\titleformat{\section}
[hang]
{\bfseries}
{\bfseries\thesection}{1ex}{\bfseries}
\titlespacing{\section}{0cm}{3ex}{-0.7ex}


\titleformat{\subsection}
[hang]
{\bfseries}
{\bfseries\thesubsection}{1ex}{\bfseries}
\titlespacing{\subsection}{0cm}{3ex}{-0.7ex}


\newtheoremstyle{dotlesstheorem}  % follow `plain` defaults but change HEADSPACE.
  {}   % ABOVESPACE
  {0.4cm}   % BELOWSPACE
  {\itshape}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {}         % HEADPUNCT
  {  }  % HEADSPACE. `plain` default: {5pt plus 1pt minus 1pt}
  {}          % CUSTOM-HEAD-SPEC
\theoremstyle{dotlesstheorem}
\newtheorem{teorema}{Teorema}[chapter]
\renewcommand{\theteorema}{\arabic{chapter}.\arabic{teorema}}
\newtheorem{lemma}{Lemma}[chapter]
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\newtheorem{sifat}{Sifat}[chapter]
\renewcommand{\thesifat}{\arabic{chapter}.\arabic{sifat}}
\newtheorem{akibat}{Akibat}[chapter]
\renewcommand{\theakibat}{\arabic{chapter}.\arabic{akibat}}
\newtheorem{proposisi}{Proposisi}[chapter]
\renewcommand{\theproposisi}{\arabic{chapter}.\arabic{proposisi}}
\newtheorem{definisi}{Definisi}[chapter]
\renewcommand{\thedefinisi}{\arabic{chapter}.\arabic{definisi}}

\newtheoremstyle{dotlessexample}  % follow `plain` defaults but change HEADSPACE.
  {}   % ABOVESPACE
  {0.4cm}   % BELOWSPACE
  {}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {}         % HEADPUNCT
  {  }  % HEADSPACE. `plain` default: {5pt plus 1pt minus 1pt}
  {}          % CUSTOM-HEAD-SPEC
\theoremstyle{dotlessexample}
\newtheorem{contoh}{Contoh}[chapter]
\renewcommand{\thecontoh}{\arabic{chapter}.\arabic{contoh}}
\newtheorem{algoritma}{Algoritma}[chapter]
\renewcommand{\thealgoritma}{\arabic{chapter}.\arabic{algoritma}}
\newtheorem{skripprogram}{Skrip Program}[chapter]
\renewcommand{\theskripprogram}{\arabic{chapter}.\arabic{skripprogram}}

\renewenvironment{proof}{\vspace{-2ex}\noindent{\bf Bukti.}}{\hfill$\blacksquare$\newline\vspace{-0.4cm}}
\def\faktor#1#2{\raise0.7ex\hbox{$#1$}\!\!\!\rotatebox{-11}{$\Big/$\!}\!\lower0.7ex\hbox{$#2$}}
\def\faktorr#1#2{\raise0.4ex\hbox{$#1$}\!\!\rotatebox{-11}{$\big/$\!}\lower0.4ex\hbox{$#2$}}
\def\N{\mathbb{N}}
\def\Z{\mathbb{Z}}
\def\Q{\mathbb{Q}}
\def\R{\mathbb{R}}
\def\C{\mathbb{C}}
\def\im{\textrm{Im}}
\def\pustaka#1{\citeauthor{#1}\!\!,~\!\citeyear{#1}}
\def\tpustaka#1{\citeauthor{#1}~\negmedspace(\citeyear{#1})}

\usepackage[pdftex,bookmarks=true]{hyperref}
\hypersetup{
colorlinks=false,
pdfborder={0 0 0}
}

\def\itemset{\vspace{-1.5ex}\itemsep3pt \parskip0pt \parsep0pt}


\def\captionsbahasa{%
\def\prefacename{KATA PENGANTAR}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR LAMBANG}%
\def\abstractname{INTISARI}%
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indek}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%
}
\def\captionsenglish{%
\def\prefacename{PREFACE}%
\def\contentsname{CONTENTS}%
\def\listfigurename{LIST OF FIGURES}%
\def\listtablename{LIST OF TABLES}%
\def\listappendixname{LIST OF APPENDICES}%
\def\nomenclaturename{NOMENCLATURE}%
\def\abstractname{ABSTRACT}%
\def\partname{PART}%
\def\chaptername{CHAPTER}%
\def\appendixname{APPENDIX}%
\def\refname{REFERENCES}%
\def\bibname{REFERENCES}%
\def\indexname{Index}%
\def\figurename{Figure}%
\def\tablename{Table}%
\def\pagename{Page}%
}

%------------------------------------------------------------
%The form of page numbering
%------------------------------------------------------------
\pagestyle{myheadings}
\markright{}

%------------------------------------------------------------
%Define page numbering in the first chapter
%------------------------------------------------------------
\def\ps@chapterheading{%
  \let\@evenhead\@empty\let\@oddhead\@empty
  \def\@oddfoot{\hfil\thepage\hfil}%
  \def\@evenfoot{\hfil\thepage\hfil}
  }


%------------------------------------------------------------]
%Define thesis's inputs
%------------------------------------------------------------
\gdef\@university{UNIVERSITAS ISLAM NEGERI SUNAN KALIJAGA}
\gdef\@faculty{Fakultas SAINS DAN TEKNOLOGI}
\gdef\@city{Yogyakarta}

\newcommand{\studyprogramme}[1]{\gdef\@studyprogramme{#1}}
\newcommand{\@studyprogramme}{}

\newcommand{\titleind}[1]{\gdef\@titleind{#1}}
\newcommand{\@titleind}{}
\newcommand{\titleeng}[1]{\gdef\@titleeng{#1}}
\newcommand{\@titleeng}{}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\@fullname}{}
\newcommand{\NIM}[1]{\gdef\@NIM{#1}}
\newcommand{\@NIM}{}
\newcommand{\examdate}[1]{\gdef\@examdate{#1}}
\newcommand{\@examdate}{\number\day~\ifcase\month\or
    Januari\or Pebruari\or Maret\or April\or Mei\or Juni\or
    Juli\or Agustus\or September\or Oktober\or November\or Desember\fi
    \space \number\year}
\newcommand{\yearsubmit}[1]{\gdef\@yearsubmit{#1}}
\newcommand{\@yearsubmit}{}



%------------------------------------------------------------
%Define cover in Indonesian
%------------------------------------------------------------
\def\cover{%
  \thispagestyle{empty}%
  \pagenumbering{roman}
  \setcounter{page}{1}
    \begin{center}
      \begin{doublespacing}
      \MakeUppercase{\normalfont\bfseries Skripsi}\\
      \vspace{2em}	
      {\large\bfseries\@titleind}
      \vspace{0.7cm}
      %{\bfseries( }\MakeUppercase{\normalfont\slshape\bfseries\@titleeng} {\bfseries )}\par\nobreak
       \vfill
       \includegraphics[width=5.5cm]{uinlogo}
       \vfill
        \MakeUppercase{\normalfont\@fullname}\\
        {\normalfont\@NIM}\\
       \vspace{2.5cm}
       {\normalfont
         \MakeUppercase{\bfseries Program Studi \@studyprogramme}\\
         \MakeUppercase{\bfseries\@faculty}\\
         \MakeUppercase{\bfseries\@university}\\
         \MakeUppercase{\bfseries\@city}\\
         \vspace{0.3cm}
         {\large\bfseries\@yearsubmit}}\\
      \end{doublespacing}
      \end{center}
}


%------------------------------------------------------------
%Define titlepage in Indonesian
%------------------------------------------------------------
\def\titlepage{%
  \chapter*{}%
  \thispagestyle{empty}%
  \setcounter{page}{1}
  \vspace{-3cm}
    \begin{center}
      \MakeUppercase{\large\normalfont\bfseries\@titleind}\par\nobreak
      \begin{doublespacing}
      %\MakeUppercase{\normalfont\bfseries Skripsi}\\
      %\vspace{1.5cm}

      %\vspace{1.0cm}
      %\MakeUppercase{\normalfont\slshape\bfseries\@titleeng}\par\nobreak

      \vspace{1.5cm}

      {\normalfont SKRIPSI}\\
      {\normalfont Untuk memenuhi sebagian persyaratan}\\
      {\normalfont mencapai derajat Sarjana S-1}\\
      {\normalfont Program Studi \@studyprogramme}

       \vfill
       \includegraphics[height=5.5cm]{uinlogo}
       \vfill
       Disusun Oleh\\
       \MakeUppercase{\normalfont\@fullname}\\
       {\normalfont\@NIM}\\
       \vspace{2cm}

       {\normalfont
       Kepada\\
         \MakeUppercase{\bfseries Program Studi \@studyprogramme}\\
         \MakeUppercase{\bfseries\@faculty}\\
         \MakeUppercase{\bfseries\@university}\\
         \MakeUppercase{\bfseries\@city}\\
         \vspace{0.3cm}
         {\large\bfseries\@yearsubmit}}\\
      \end{doublespacing}
      \end{center}
\addcontentsline{toc}{chapter}{HALAMAN JUDUL}
}



\def\pengesahanscan{%
    \newpage\thispagestyle{chapterheading}%
    \phantomsection
    \addcontentsline{toc}{chapter}{LEMBAR PENGESAHAN SKRIPSI/TUGAS AKHIR}
    \includepdf[fitpaper]{pengesahan}
}

\def\persetujuanscan{%
    \newpage\thispagestyle{chapterheading}%
    \phantomsection
    \addcontentsline{toc}{chapter}{LEMBAR PERSETUJUAN SKRIPSI/TUGAS AKHIR}
    \includepdf[fitpaper]{persetujuan}
}




%------------------------------------------------------------
%Approval Page
%------------------------------------------------------------
\def\approvalpage{%
  \newpage\thispagestyle{empty}%
  \phantomsection
  \begin{center}
  \begin{singlespace}
  \MakeUppercase{\normalfont\bfseries\expandafter{HALAMAN PENGESAHAN}}\\
  \vspace{1cm}
  \MakeUppercase{\normalfont\bfseries\expandafter{SKRIPSI}}\\
  \vspace{0.5cm}
      \MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak
  \vspace{1cm}
Telah dipersiapkan dan disusun oleh\\
\vspace{0.8cm}
\@fullname\\
\@NIM\\
\vspace{0.8cm}
Telah dipertahankan di depan Tim Penguji\\
pada tanggal \expandafter{\@examdate}\\
\vspace{0.5cm}
Susunan Tim Penguji

\vspace{3cm}
\begin{tabular}{p{7.5cm}p{7cm}}
\underline{\@firstsupervisor}&\underline{\@firstexaminer}\\
Pembimbing Utama&Ketua Tim Penguji
\end{tabular}

\vspace{2cm}
\begin{tabular}{p{7.5cm}p{7cm}}
&\underline{\@secondexaminer}\\
&Penguji
\end{tabular}

\vspace{2cm}
\begin{tabular}{p{7.5cm}p{7cm}}
&\underline{\@thirdexaminer}\\
&Penguji
\end{tabular}

    \end{singlespace}
    \end{center}
\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
}

%------------------------------------------------------------
%Declare Page
%------------------------------------------------------------
\def\declarepagescan{%
  \newpage\thispagestyle{chapterheading}%
  \phantomsection
\addcontentsline{toc}{chapter}{HALAMAN PERNYATAAN KEASLIAN SKRIPSI}
\includepdf[fitpaper]{pernyataan}
}

%------------------------------------------------------------
%Acknowlegment
%------------------------------------------------------------
\def\acknowledment{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
\null\vfill
\addcontentsline{toc}{chapter}{HALAMAN PERSEMBAHAN}
}

%------------------------------------------------------------
%Motto
%------------------------------------------------------------
\def\motto{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
\null\vfill
\addcontentsline{toc}{chapter}{HALAMAN MOTTO}
}

%------------------------------------------------------------
%Preface
%------------------------------------------------------------
\def\preface{%
  \chapter*{KATA PENGANTAR}%
\addcontentsline{toc}{chapter}{KATA PENGANTAR}
}

%------------------------------------------------------------
%Nomenclature
%------------------------------------------------------------
\def\lambang{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{DAFTAR LAMBANG}%
  \vspace{0.5cm}
\addcontentsline{toc}{chapter}{\nomenclaturename}
}

%------------------------------------------------------------
%Redefine Abstract in Indonesian
%------------------------------------------------------------
\def\abstractind{%
  \clearpage\thispagestyle{chapterheading}%
  \chapter*{}%
  {\centering \normalfont
  {\vspace{-1.97cm}\textbf{\abstractname}} \\
  \vspace{0.5cm}
   {\textbf{\@titleind}}
        \par\nobreak
        \vskip 12\p@
    \interlinepenalty\@M
    {\normalsize Oleh\par
   \vspace{0.5cm}
    \@fullname\\
    \vspace{-0.2cm}
    \@NIM\\
    \vskip 10\p@
    }\par\nobreak
    }
  \begin{singlespace}%
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\endabstractind{\par\vfil\null\end{singlespace}}

%------------------------------------------------------------
%Redefine Abstract in English
%------------------------------------------------------------
\def\abstracteng{%
  \clearpage\thispagestyle{chapterheading}\selectlanguage{english}%
  \chapter*{}%
  {\centering \normalfont
  {\vspace{-1.97cm}\textbf{\abstractname}}\\
  \vspace{0.5cm}
   {\textbf{\@titleeng}}
        \par\nobreak
        \vskip 12\p@
    \interlinepenalty\@M
    {\normalsize By\par
   \vspace{0.5cm}
    \@fullname\\
    \vspace{-0.2cm}
    \@NIM\\
    \vskip 10\p@
    }\par\nobreak
    }
  \begin{singlespace}%
  \vskip 12\p@
  \addcontentsline{toc}{chapter}{\abstractname}
  }
\def\endabstracteng{\par\vfil\null\end{singlespace}%
\clearpage\pagenumbering{arabic}\setcounter{page}{1}}

\endinput
