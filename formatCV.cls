%\ProvidesClass{friggeri-cv}[2012/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage[usenames,dvipsnames]{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{brown}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{darkgray}
\colorlet{sectioncolor}{Emerald}

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

\usepackage{fontspec} 
\usepackage{fontawesome}

\newfontfamily\bodyfont[Path = fonts/lato/]{Lato-Lig}
\newfontfamily\thinfont[Path = fonts/lato/]{Lato-Hai}
\newfontfamily\headingfont[Path = fonts/lato/]{Lato-Bol}

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}


%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{28pt}\selectfont%default{14pt}{24pt}
  \bodyfont%
  \color{white}%
}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=3cm] (box) at (current page.north){}; % height of gray box
    \node [anchor=center] (name) at (box) {%
      \fontsize{38pt}{62pt}\color{header}%default{30pt}{62pt}
      {\thinfont #1}{\bodyfont  #2}
    };
    \node [anchor=north] at (name.south) {%
      \fontsize{11pt}{24pt}\color{header}%default {14pt}{24pt}
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{1.55cm} % space between gray block and 'education'
  \vspace{-3.5\parskip} 
}


%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%
\RequirePackage{parskip}


\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \LARGE\headingfont\color{headercolor}%
    \color{sectioncolor} #1%
  }
  \par\vspace{.005cm} % space between section and following text. default .25\parskip
}

\renewcommand{\subsection}[2]{
  \par\vspace{.5\parskip}%default .5\parskip
  \Large\headingfont\color{headercolor} #2%
  \par\vspace{.25\parskip}% default .25\parskip
}

\pagestyle{empty}


%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%
\usepackage{enumitem}
\setlist{nosep} % or \setlist{noitemsep}

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{
\renewcommand{\bfseries}{\headingfont\color{headercolor}}
\newcommand{\entry}[4]{%
	\textbf{##2}%
	\hfill%
	{\footnotesize\addfontfeature{Color=darkgray} ##3 | ##1}\\
	##4%
	}}
%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1.1cm} % default 1cm
\setlength{\TPVertModule}{.67cm}%default .6cm
\newenvironment{aside}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{1.4\baselineskip}{\LARGE\headingfont\color{sectioncolor} ##1}\vspace{\parskip}% space under subsection vspace default: 'baselineskip
  }
  \begin{textblock}{3.6}(1.5, 4.33) % default:{3.6}(1.5, 4.33)
  \begin{flushright}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}


%%%%%%%%%%%%%%
% Skype Logo %
%%%%%%%%%%%%%%
\newcommand{\skype}{
\begin{tikzpicture}[y=0.08em,x=0.08em,xscale=0.025,yscale=-0.025, inner sep=0pt, outer sep=0pt] % default: y=0.08em,x=0.02em,xscale=0.25,yscale=-0.25
\path[fill=darkgray,even odd rule] (487.6550,288.9690) .. controls (489.0610,278.5690) and
  (489.8700,267.9960) .. (489.8700,257.2330) .. controls (489.8700,128.0770) and
  (384.5990,23.3610) .. (254.7670,23.3610) .. controls (241.8630,23.3610) and
  (229.2120,24.4210) .. (216.9010,26.4410) .. controls (194.8280,12.0570) and
  (168.5590,3.6740) .. (140.2880,3.6740) .. controls (62.7660,3.6740) and
  (0.0000,66.4820) .. (0.0000,143.9800) .. controls (0.0000,172.1780) and
  (8.2990,198.3740) .. (22.5900,220.3690) .. controls (20.6650,232.3860) and
  (19.6810,244.6920) .. (19.6810,257.2290) .. controls (19.6810,386.4050) and
  (124.8980,491.1100) .. (254.7660,491.1100) .. controls (269.4230,491.1100) and
  (283.6930,489.6840) .. (297.5620,487.1780) .. controls (319.1120,500.5470) and
  (344.4960,508.3260) .. (371.7080,508.3260) .. controls (449.2100,508.3260) and
  (512.0010,445.5020) .. (512.0010,368.0120) .. controls (511.9980,338.7190) and
  (503.0410,311.4840) .. (487.6550,288.9690) -- cycle(276.7400,429.5960) ..
  controls (202.0340,433.4870) and (167.0750,416.9590) .. (135.0500,386.9050) ..
  controls (99.2850,353.3370) and (113.6520,315.0500) .. (142.7900,313.1040) ..
  controls (171.9120,311.1590) and (189.3980,346.1160) .. (204.9410,355.8400) ..
  controls (220.4650,365.5280) and (279.5340,387.6000) .. (310.7350,351.9320) ..
  controls (344.7100,313.1040) and (288.1410,293.0120) .. (246.6760,286.9300) ..
  controls (187.4730,278.1640) and (112.7260,246.1370) .. (118.5410,183.0230) ..
  controls (124.3580,119.9490) and (172.1230,87.6090) .. (222.3910,83.0470) ..
  controls (286.4680,77.2300) and (328.1820,92.7540) .. (361.1760,120.9070) ..
  controls (399.3270,153.4360) and (378.6840,189.8010) .. (354.3770,192.7270) ..
  controls (330.1660,195.6360) and (302.9730,139.2230) .. (249.5860,138.3750) ..
  controls (194.5590,137.5110) and (157.3690,195.6360) .. (225.3000,212.1590) ..
  controls (293.2660,228.6640) and (366.0500,235.4450) .. (392.2610,297.5760) ..
  controls (418.4900,359.7130) and (351.5070,425.7010) .. (276.7400,429.5960) --
  cycle;

\end{tikzpicture}
}


%%%%%%%%%%%%%%%%%
% LinkedIn Logo %
%%%%%%%%%%%%%%%%%
\newcommand{\colorLinkedinSign}{\textcolor{darkgray}{\faLinkedinSign}}

%%%%%%%%%%%%%%%
% GitHub Logo %
%%%%%%%%%%%%%%%
\newcommand{\colorGitHubLogo}{\textcolor{darkgray}{\faGithubSign}}

%%%%%%%%%%%%%%%%
% Other tweaks %
%%%%%%%%%%%%%%%%

\RequirePackage[left=6.1cm,top=2cm,right=1.5cm,bottom=0.3cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}