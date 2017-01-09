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

\setlength\leftmargini  {2.5em}
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}

% Your first name
\newcommand{\firstName}[1]{\def\@firstName{#1}}
% Your last name
\newcommand{\lastName}[1]{\def\@lastName{#1}}
% Destination - city, institute, conference name
\newcommand{\destinationEvent}[1]{\def\@destinationEvent{#1}}
\newcommand{\destinationCountry}[1]{\def\@destinationCountry{#1}}
\newcommand{\destinationCity}[1]{\def\@destinationCity{#1}}
\newcommand{\destinationInstitution}[1]{\def\@destinationInstitution{#1}}
% Dates of the event
\newcommand{\datesFrom}[1]{\def\@datesFrom{#1}}
\newcommand{\datesTo}[1]{\def\@datesTo{#1}}
% Dates of leave
\newcommand{\leaveFrom}[1]{\def\@leaveFrom{#1}}
\newcommand{\leaveTo}[1]{\def\@leaveTo{#1}}
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
 \itemAnkieta{Kto}{\@firstName \@lastName}
 % miejsce, instytucja, konferencja
 \itemAnkieta{Dokąd}{\@destinationEvent, \@destinationInstitution, \@destinationCity, \@destinationCountry}
 \itemAnkieta{Na jaki okres}{\@datesFrom - \@datesTo}
 \itemAnkieta{Okres urlopu}{\@leaveFrom - \@leaveTo}
 % profesor zaproszony, gość naukowy, wykład zaproszony, staż naukowy, komunikat ustny, plakat,  itp.
 \itemAnkieta{W jakim charakterze}{\@purpose}
 \itemAnkieta{Tytuły wystapień}{\@contributionTitle}
 % kwota, źródło
 \itemFinance{Sposób finansowania}{Kwota}{\@cost}{Źródło}{\@fundingSource}
 % zastępstwo, itp.
 \itemAnkieta{Zajęcia dydaktyczne}{\@classes}
\end{enumerate}
}