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
\RequirePackage[pdfusetitle,hidelinks]{hyperref}
\RequirePackage{listings}
\RequirePackage[hypcap=true]{caption}
\RequirePackage{pdfpages}
\RequirePackage{siunitx}
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
\newcommand\tutor[1]{\renewcommand\@tutor{#1}}
\newcommand\@tutor{}
\newcommand\supervisor[1]{\renewcommand\@supervisor{#1}}
\newcommand\@supervisor{}
\newcommand\groupMemberOne[4]{\renewcommand\@groupMemberOneFirstName{#1}\renewcommand\@groupMemberOneLastName{#2}\renewcommand\@groupMemberOneMatriculationNumber{#3}\renewcommand\@groupMemberOneEMail{#4}}
\newcommand\@groupMemberOneFirstName{}
\newcommand\@groupMemberOneLastName{}
\newcommand\@groupMemberOneMatriculationNumber{}
\newcommand\@groupMemberOneEMail{}
\newcommand\groupMemberTwo[4]{\renewcommand\@groupMemberTwoFirstName{#1}\renewcommand\@groupMemberTwoLastName{#2}\renewcommand\@groupMemberTwoMatriculationNumber{#3}\renewcommand\@groupMemberTwoEMail{#4}}
\newcommand\@groupMemberTwoFirstName{}
\newcommand\@groupMemberTwoLastName{}
\newcommand\@groupMemberTwoMatriculationNumber{}
\newcommand\@groupMemberTwoEMail{}
% Setting up counters and other variables from the article class
\setcounter{secnumdepth}{4}
\pagestyle{fancy}
\setlength{\parindent}{0em}
\setcounter{tocdepth}{4}
% set up siunitx to display numbers correctly
\sisetup{group-digits=none, table-alignment=center, locale=DE, uncertainty-mode=separate,output-open-uncertainty = [, output-close-uncertainty = ]}
% set up the header
\fancyhead[L]{\footnotesize Gruppe \@group \\ \@groupMemberOneLastName, \@groupMemberTwoLastName}
\fancyhead[C]{\footnotesize \@title \\ phy211 - Grundpraktikum Physik - Teil \rom{\@labCoursePart}}
\fancyhead[R]{\footnotesize \@date \\ \ifodd \@labCoursePart WS \else SS \fi \@semester}
% new environment for answering the questions from the script
\newenvironment{question}[2]
    {
        \begin{tcolorbox}[adjusted title=\textbf{Zu Frage #1}]
            \begin{center}
                #2
            \end{center}
        \tcblower}
    {
    \end{tcolorbox}
    }
% Command to reference the script
\newcommand{\scriptref}[3]{\textit{Entnommen aus /1/, S. #1, #2 #3}}

\renewcommand*{\maketitle}{%
\begin{titlepage}
    \begin{center}
        \topskip0pt
        \vspace*{\fill}
        \pagenumbering{Roman}
        \begin{figure}[H]
            \centering
            \includegraphics[width=0.5\textwidth, keepaspectratio]{logo.png}
        \end{figure}
        \vspace{0.1cm}
        {\Large Grundpraktikum Physik \rom{1} - \ifodd \@labCoursePart Wintersemester \else Sommersemester \fi \@semester}\\
        \vspace{1.5cm}
        {\huge \textsc{\thetitle}}\\
        \vspace{1.5cm}
        {\Large \thedate}\\
        \vspace{0.5cm}
        {\Large Gruppe \@group \ (GPR Gruppe \@gprGroup)}\\
        \vspace{1.5cm}
        \begin{tabular}[t]{c@{\extracolsep{8em}}c}
            {\Large\textbf{Betreuer}} & {\Large\textbf{Tutor}} \\
            {\large \@supervisor} & {\large \@tutor} \\
        \end{tabular}\\
        \vspace{1.5cm}
        {\Large\textbf{Gruppenmitglieder}} \\~\\
        
        {\large \textit{\@groupMemberOneFirstName \  \@groupMemberOneLastName}} \\
        Matrikelnummer: \@groupMemberOneMatriculationNumber \\
        \href{mailto:\@groupMemberOneEMail}{\@groupMemberOneEMail}
        \\~\\
        
        {\large \textit{\@groupMemberTwoFirstName \  \@groupMemberTwoLastName}} \\
        Matrikelnummer: \@groupMemberTwoMatriculationNumber \\
        \href{mailto:\@groupMemberTwoEMail}{\@groupMemberTwoEMail}
        \vspace*{\fill}
        \thispagestyle{empty}
        \newpage
    \end{center}
    \tableofcontents
\end{titlepage}
\pagenumbering{arabic}
}