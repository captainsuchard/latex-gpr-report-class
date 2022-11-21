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



% Creating commands for the supervisor and tutor
\newcommand\gprGroup[1]{\renewcommand\@gprGroup{#1}}
\newcommand\@gprGroup{}
\newcommand\group[1]{\renewcommand\@group{#1}}
\newcommand\@group{}
\newcommand\semester[1]{\renewcommand\@semester{#1}}
\newcommand\@semester{}
\newcommand\labCoursePart[1]{\renewcommand\@labCoursePart{#1}}
\newcommand\@labCoursePart{}
\newcommand\groupMemberOne[1]{\renewcommand\@groupMemberOne{#1}}
\newcommand\@groupMemberOne{}
\newcommand\groupMemberTwo[1]{\renewcommand\@groupMemberTwo{#1}}
\newcommand\@groupMemberTwo{}
% Setting up counters and other variables from the article class
\setcounter{secnumdepth}{4}
\pagestyle{fancy}
\setlength{\parindent}{0em}
\setcounter{tocdepth}{4}
% set up siunitx to display numbers correctly
\sisetup{group-digits=none, table-alignment=center, locale=DE, uncertainty-mode=separate,output-open-uncertainty = [, output-close-uncertainty = ]}
% Setting the normal font size
\renewcommand{\normalsize}{\fontsize{10}{12}\selectfont}
\setcounter{secnumdepth}{0}