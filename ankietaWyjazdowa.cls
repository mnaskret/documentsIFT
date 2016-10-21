%%
%% This file contains classes and the general design of Ankieta Wyjazdowa
%% Author: Michał Naskręt
%%

\usepackage[utf8]{inputenc}
\usepackage[english,polish]{babel}
\usepackage[OT4]{fontenc}
\usepackage[MeX]{polski}

\setlength\paperheight {297mm}
\setlength\paperwidth  {210mm}

\input{size12.clo}









% Your first and last name
\newcommand{\nameLastname}[1]{\def\@nameLastname{#1}}
% Destination - city, institute, conference name
\newcommand{\destination}[1]{\def\@destination{#1}}
% Dates of the event
\newcommand{\dates}[1]{\def\@dates{#1}}
% Dates of leave
\newcommand{\leaveDates}[1]{\def\@leaveDates{#1}}
% Purpose of your trip - invited professor/scientific guest/scientific project/talk/poster
\newcommand{\purpose}[1]{\def\@purpose{#1}}
% The title of your contribution/project
\newcommand{\contributionTitle}[1]{\def\@contributionTitle{#1}}
% Estimated total cost
\newcommand{\cost}[1]{\def\@cost{#1}}
% Funding source
\newcommand{\fundingSource}[1]{\def\@fundingSource{#1}}
% Your teaching responsibilities - substitution/postponing
\newcommand{\classes}[1]{\def\@classes{#1}}

\newcommand{\itemAnkieta}[2]{\item \textbf{#1}\\ \textit{#2}}
\newcommand{\itemFinance}[5]{\item \textbf{#1} \begin{itemize}
                                               \item \textbf{#2}\\
                                               \textit{#3}
                                               \item \textbf{#4}\\
                                               \textit{#5}
                                              \end{itemize}}

\newcommand{\maketitle}{
  \centering
  \Huge
  Ankieta Wyjazdowa
  \vspace{2cm}
}

\newcommand{\makeAnkieta}{
 \normalsize
 \begin{enumerate}
 \itemAnkieta{Kto}{\@nameLastname}
 % miejsce, instytucja, konferencja
 \itemAnkieta{Dokąd}{\@destination}
 \itemAnkieta{Na jaki okres}{\@dates}
 \itemAnkieta{Okres urlopu}{\@leaveDates}
 % profesor zaproszony, gość naukowy, wykład zaproszony, staż naukowy, komunikat ustny, plakat,  itp.
 \itemAnkieta{W jakim charakterze}{\@purpose}
 \itemAnkieta{Tytuły wystapień}{\@contributionTitle}
 % kwota, źródło
 \itemFinance{Sposób finansowania}{Kwota}{\@cost}{Źródło}{\@fundingSource}
 % zastępstwo, itp.
 \itemAnkieta{Zajęcia dydaktyczne}{\@classes}
\end{enumerate}
}