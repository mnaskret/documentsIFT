%%
%% This file contains classes and the general design of Wniosek o skierowanie za granicę
%% Author: Michał Naskręt
%%

\usepackage[utf8]{inputenc}
\usepackage[english,polish]{babel}
\usepackage[OT4]{fontenc}
\usepackage[MeX]{polski}
\usepackage{etoolbox}
\usepackage{soulutf8}
\usepackage{tabularx}
\usepackage{amsmath}

\setlength\paperheight {297mm}
\setlength\paperwidth  {210mm}

\input{size10.clo}

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

\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}}

\newcommand{\ol}[1]{{\setul{-0.9em}{}\ul{#1}}}

% Your first name
\newcommand{\firstName}[1]{\def\@firstName{#1}}
% Your last name
\newcommand{\lastName}[1]{\def\@lastName{#1}}
% Position
\newcommand{\position}[1]{\def\@position{#1}}
% Institute
\newcommand{\institute}[1]{\def\@institute{#1}}
% Destination - city, institute, conference name
\newcommand{\destinationEvent}[1]{\def\@destinationEvent{#1}}
\newcommand{\destinationCountry}[1]{\def\@destinationCountry{#1}}
\newcommand{\destinationCity}[1]{\def\@destinationCity{#1}}
\newcommand{\destinationInstitution}[1]{\def\@destinationInstitution{#1}}
% Describe purpose of your stay
\newcommand{\purposeNumber}[1]{\def\@purposeNumber{#1}}
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
\newcommand{\travelCost}[1]{\def\@travelCost{#1}}
\newcommand{\hotelCost}[1]{\def\@hotelCost{#1}}
\newcommand{\perDiemCost}[1]{\def\@perDiemCost{#1}}
\newcommand{\feeCost}[1]{\def\@feeCost{#1}}
\newcommand{\otherCost}[1]{\def\@otherCost{#1}}
\newcommand{\totalCostPLN}[1]{\def\@totalCostPLN{#1}}
\newcommand{\totalCostCurrency}[1]{\def\@totalCostCurrency{#1}}
% Funding source
\newcommand{\fundingSource}[1]{\def\@fundingSource{#1}}
% Your teaching responsibilities - substitution/postponing
\newcommand{\classes}[1]{\def\@classes{#1}}

% \newcommand{\itemDouble}[2]{\item \textbf{#1} \textit{#2}}
% \newcommand{\itemTriple}[3]{\item \textbf{#1} \textit{#2} \textit{#3}}
% \newcommand{\itemFour}[4]{\item \textbf{#1} \textit{#2} \textit{#3}}
% \newcommand{\itemFinance}[5]{\item \textbf{#1} \begin{itemize}
%                                                \item \textbf{#2}\\
%                                                \textit{#3}
%                                                \item \textbf{#4}\\
%                                                \textit{#5}
%                                               \end{itemize}}

\newcommand{\maketitle}{
  \footnotesize
  \flushright \parbox{.25\textwidth}{Załącznik Nr 1 do zarządzenia Nr 144 /2006 z dnia 1 grudnia 2006 r.}\\
  \flushright \parbox{.25\textwidth}{Załącznik Nr 4 do zarządzenia Nr 7/2006 z dnia 20 stycznia 2006 r .}\\
  \vspace{2cm}
  \centering
  \Huge
  Wniosek o wyrażenie zgody na podróż służbową poza granice kraju\\
  \vspace{2.5cm}
  \normalsize
  \flushleft
  \underline{Podstawa prawna:} rozporządzenie Ministra Pracy i Polityki Socjalnej z dnia 19 grudnia 2002 r. w sprawie wysokości oraz warunków ustalania należności przysługujących pracownikowi zatrudnionemu w państwowej lub samorządowej jednostce sfery budżetowej z tytułu podróży służbowej poza granicami kraju (Dz. U. Nr 236, poz. 1991, z późniejszymi zmianami). 
}

\newcommand{\makeWniosek}{
 \normalsize
 \begin{enumerate}
 \item \textbf{Imię i nazwisko} \textit{\@firstName} \textit{\@lastName}
 \item \textbf{Stanowisko} \textit{\@position}\textbf{, miejsce pracy (instytut)} \textit{\@institute}
 \item \textbf{Kraj wyjazdu} \textit{\@destinationCountry}\textbf{, miejscowość} \textit{\@destinationCity}
 \item \textbf{Nazwa szkoły lub jednostki naukowej za granicą} \textit{\@destinationInstitution} \textbf{, czas pobytu (od} \textit{\@datesFrom} \textbf{do} \textit{\@datesTo}\textbf{)}
 \item \textbf{Cel wyjazdu:} \textit{\@destinationEvent}
  \begin{enumerate}
   \item \ifnumcomp{\@purposeNumber}{=}{0}{\ul{konferencja, zjazd, sympozjum,}}{konferencja, zjazd, sympozjum,}
   \item \ifnumcomp{\@purposeNumber}{=}{1}{\ul{szkolenie,}}{szkolenie,}
   \item \ifnumcomp{\@purposeNumber}{=}{2}{\ul{kursy (np.: językowe),}}{kursy (np.: językowe),}
   \item \ifnumcomp{\@purposeNumber}{=}{3}{\ul{inne.}}{inne.}
  \end{enumerate}
 \pagebreak
 \item \textbf{Specyfikacja kosztów wyjazdu}
  \begin{tabular}{M{.36\textwidth} M{0.56\textwidth}}
   koszty planowane & źródło finansowania (numer grantu lub umowy specyfikacja innego dokument)\\
   &\\
   \textit{\@cost} & \textit{\@fundingSource}
  \end{tabular}
  \vspace{1.5cm}
  \begin{flushright}
   \parbox{.4\textwidth}{\rule{.4\textwidth}{0.4pt}\\
  \centering podpis dysponenta środków finansowych}
  \end{flushright}
  \begin{enumerate}
   \item \textbf{koszty podróży w złotówkach} \textit{\@travelCost}
   \item koszty podróży w dewizach
   \begin{enumerate}
    \item \textbf{hotel} \textit{\@hotelCost}
    \item \textbf{diety} \textit{\@perDiemCost}
   \end{enumerate}
   \item inne koszty w dewizach
   \begin{enumerate}
    \item \textbf{wpisowe} \textit{\@feeCost}
    \item \textbf{inne} \textit{\@otherCost}
   \end{enumerate}
  \end{enumerate}
 \item \textbf{Wypłata:}
  \begin{enumerate}
   \item \textbf{w dewizach} \textit{\@totalCostCurrency}
   \item \textbf{w złotych} \textit{\@totalCostPLN}
  \end{enumerate}
 \item \textbf{Załączniki, które należy załączyć do wniosku:}
  \begin{enumerate}
   \item zaproszenie lub karta zgłoszenia uczestnictwa,
   \item program z uwzględnionym zakresem świadczeń ze strony organizatora,
   \item bank i numer konta dewizowego.
  \end{enumerate}
 \vspace{1.5cm}
 \begin{flushright}
  \parbox{.4\textwidth}{\rule{.4\textwidth}{0.4pt}\\
  \centering data i podpis}
 \end{flushright}
 \item \textbf{Akceptacja bezpośredniego przełożonego:}
 \vspace{1.5cm}
 \item \textbf{Decyzja: kierownika jednostki organizacyjnej; Dziekana; osoby upoważnionej; Prorektora ds. Badań Naukowych i Współpracy z Zagranicą; Rektora;}
\end{enumerate}
}