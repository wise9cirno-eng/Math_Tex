\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ModulEN}
\LoadClass[openany]{book}

	%
	%数学库
	%
	%AMS系列
	\RequirePackage{amsmath}
	\RequirePackage{amsfonts}
	\RequirePackage{amssymb}
	\RequirePackage{stix}
	%\RequirePackage{amsthm}
	
	\RequirePackage{latexsym}
	
	%
	%装饰结构库
	%
	%mdframe,用于生成着色框
	\RequirePackage[framemethod=tikz]{mdframed}
	%xcolor
	\RequirePackage{xcolor}
		
	
	%
	%图片引用，绘制
	%
	%graphicx
	\RequirePackage{graphicx}
	
	%Tikz
	\RequirePackage{tikz}
	\RequirePackage{tikz-cd}
	
	%标题页的绘制，以及页眉页脚格式
	\RequirePackage{titlesec}
	\RequirePackage{titletoc}
	
	%Define Colors
	
	\RequirePackage{geometry}
	
	\RequirePackage{hyperref}
	
	\RequirePackage{fancyhdr}

	%子文件 

	\RequirePackage{subfiles}

	%伪代码
	\RequirePackage{algorithm}
	\RequirePackage{algorithmic}


	%插入图片

	\RequirePackage{graphicx}
	\RequirePackage{epstopdf}
	
\geometry{a4paper,scale=0.8}
	
\definecolor{BGgrey1}{HTML}{DBD3D1} %Für Hintergrund der Theoremen
\definecolor{BGrot1}{HTML}{FF9E7B}
\definecolor{BGpur1}{HTML}{D3B8C5}
\definecolor{BGlight1}{HTML}{F8DAB2}
%Titlepage

%Rekonstruktion von Kapitel
\titleformat{\chapter}{\Huge\bfseries}{Chapter \thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{0pt}{10pt}

%pagehead,pagefoot
\pagestyle{fancy}
\fancyfoot[C]{\thepage}
\fancyhead[L]{}
\renewcommand{\headrulewidth}{4pt}
\renewcommand{\footrulewidth}{4pt}

%Symbols
\newcommand{\NN}{\mathbb{N}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\FF}{\mathbb{F}}
\newcommand{\HH}{\mathbb{H}}

%Newenvironment

\newenvironment{theorem}
{\begin{mdframed}[
	roundcorner=4pt,
	backgroundcolor=BGgrey1
]
$\blacktriangleright$\hspace{8pt}\textbf{\itshape Theorem}
}
{\end{mdframed}}

\newcounter{thm}[subsection]
\renewcommand{\thethm}{\thesubsection.\arabic{thm}}

\newenvironment{lemma}
{
  \refstepcounter{thm}% 支持 \label/\ref
  \par\noindent
  $\diamondsuit$\hspace{5pt}\textbf{Lemma~\thethm}\quad
}
{}

\newenvironment{proposition}
{
  \refstepcounter{thm}
  \par\noindent
  $\spadesuit$\hspace{5pt}\textbf{Proposition~\thethm}\quad
}
{}

\newenvironment{corollary}
{
  \refstepcounter{thm}
  \par\noindent
  $\bigstar$\hspace{5pt}\textbf{Corollary~\thethm}\quad
}
{}

\newenvironment{example}
{
  \refstepcounter{thm}
  \par\noindent
  $\clubsuit$\hspace{5pt}\textbf{Example~\thethm}\quad
}
{}

\newenvironment{proof}
{\vspace{5pt}\hrule\vspace{10pt}
	$\circ$\hspace{5pt}\textbf{Proof}}
{\hfill$\Box$\vspace{20pt}\hrule\vspace{10pt}}

\newenvironment{axiom}
{\begin{mdframed}[
	backgroundcolor=BGrot1,
	roundcorner=4pt
]
$\dagger$\hspace{5pt}\textbf{Axiom}
}
{\end{mdframed}}

\newenvironment{hypo}
{\begin{mdframed}[
	backgroundcolor=BGpur1,
	roundcorner=4pt	
]
\fbox{\textbf{?}}\hspace{5pt}\textbf{Hypothesis}
}
{\end{mdframed}}

\newenvironment{Def}
{
  \refstepcounter{thm}% 计数 + 支持 \label
  \begin{mdframed}[
    backgroundcolor=white,
    roundcorner=4pt
  ]
  \textbf{Definition~\thethm}\quad
}
{\end{mdframed}}

\newenvironment{OP}
{
  \begin{mdframed}[
    backgroundcolor=BGlight1,
    roundcorner=4pt
  ]
  \textbf{Open Problem}\quad
}
{\end{mdframed}}

\newtheorem{prob}{$\dagger$\hspace{5pt}Problem}[section]

%Newcommand




