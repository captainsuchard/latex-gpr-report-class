\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gpr-report}[2022/11/21 v1.0.0 Report class for the Grundpraktikum Physik at the Carl-von-Ossietzky University Oldenburg]
% Loading the class artice
\LoadClass[a4paper,12pt]{article}
% Packages required to use this class successfully
\RequirePackage[left=1.75cm,right=1.75cm,top=1.75cm,bottom=2cm,footskip=15pt]{geometry}
\RequirePackage{lmodern}
\RequirePackage{amsmath,amssymb,amsfonts,amsthm}
\RequirePackage{mathtools}
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{subcaption}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[bottom]{footmisc}
\RequirePackage[useregional]{datetime2}
\RequirePackage[pdfusetitle]{hyperref}
\RequirePackage{listings}
\RequirePackage[hypcap=true]{caption}
\RequirePackage{pdfpages}
\RequirePackage{siunitx}
\RequirePackage{setspace}
\RequirePackage{esdiff}
\RequirePackage{tcolorbox}
\RequirePackage{xcolor}

% Passing options to packages to create setups for them
\PassOptionsToPackage{font=footnotesize,labelfont=footnotesize,format=hang}{caption3}
\PassOptionsToPackage{luatex,x11names}{xcolor}

%Command for creating roman numerals
\newcommand{\rom}[1]{\uppercase\expandafter{\romannumeral #1\relax}}

% Renewing the paragraph command to allow using the paragraph as subsubsubsection
\newcounter{subsubsubsection}[subsubsection]%
\renewcommand{\thesubsubsubsection}{\thesubsubsection.\@arabic\c@subsubsubsection}%
\newcommand{\subsubsubsection}{\@startsection{subsubsubsection}%
{4}%
{\z@}%
{-3.25ex\@plus -1ex \@minus -.2ex}%
{1.5ex \@plus .2ex}%
{\normalfont\normalsize\bfseries}}
\newcommand*\l@subsubsubsection{\@dottettocline{4}{10em}{5em}}


% Setting the normal font size
\renewcommand{\normalsize}{\fontsize{10}{12}\selectfont}
\setcounter{secnumdepth}{0}