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
  \flushright \parbox{.25\textwidth}{Załacznik Nr 1 do zarządzenia Nr 14/2007 z dnia 1 lutego 2007 r.}\\
  \flushright \parbox{.25\textwidth}{Załacznik Nr 1 do zarządzenia Nr 44/2005 z dnia 31 maja 2005 r.}\\
  \vspace{2cm}
  \centering
  \Huge
  Wniosek o skierowanie za granicę\\
  \vspace{2.5cm}
  \normalsize
  \flushleft
  \underline{Podstawa prawna:} rozporządzenie Ministra Nauki i Szkolnictwa Wyższego z dnia 12 października 2006 r. w sprawie warunków kierowania osób za granice w celach naukowych, dydaktycznych i szkoleniowych oraz szczególnych uprawnień tych osób (Dz. U. Nr 190, poz. 1405). 
}

\newcommand{\makeWniosek}{
 \normalsize
 \begin{enumerate}
 \item \textbf{Imię i nazwisko} \textit{\@firstName} \textit{\@lastName}
 \item \textbf{Stanowisko} \textit{\@position}\textbf{, miejsce pracy (instytut)} \textit{\@institute}
 \item \textbf{Kraj wyjazdu} \textit{\@destinationCountry}\textbf{, miejscowość} \textit{\@destinationCity}
 \item \textbf{Nazwa szkoły lub jednostki naukowej za granicą} \textit{\@destinationInstitution} \textbf{, czas pobytu (od} \textit{\@datesFrom} \textbf{do} \textit{\@datesTo}\textbf{)}
 \item \textbf{Cel i charakter wyjazdu (odpowiednie zakreślić):}
  \begin{enumerate}
   \item \ifnumcomp{\@purposeNumber}{=}{0}{\ul{prowadzenie badań naukowych (mogą być kierowane za granice osoby uczestniczące w realizacji badan naukowych w kraju),}}{prowadzenie badań naukowych (mogą być kierowane za granicę osoby uczestniczące w realizacji badan naukowych w kraju),}
   \item \ifnumcomp{\@purposeNumber}{=}{1}{\ul{podejmowanie i prowadzenie działalności dydaktycznej,}}{podejmowanie i prowadzenie działalności dydaktycznej,}
   \item szkoleniowy na: 
   \begin{enumerate}
    \item \ifnumcomp{\@purposeNumber}{=}{2}{\ul{odbycie części jednolitych studiów magisterskich lub studiów pierwszego stopnia albo studiów drugiego stopnia,}}{odbycie części jednolitych studiów magisterskich lub studiów pierwszego stopnia albo studiów drugiego stopnia,}
    \item \ifnumcomp{\@purposeNumber}{=}{3}{\ul{studia podyplomowe,}}{studia podyplomowe,}
    \item \ifnumcomp{\@purposeNumber}{=}{4}{\ul{studia doktoranckie (na studia doktoranckie mogą być kierowane za granicę osoby posiadające odpowiedni dorobek naukowy i co najmniej roczny staż pracy w danej specjalności),}}{studia doktoranckie (na studia doktoranckie mogą być kierowane za granicę osoby posiadające odpowiedni dorobek naukowy i co najmniej roczny staż pracy w danej specjalności),}
    \item \ifnumcomp{\@purposeNumber}{=}{5}{\ul{staże naukowe, artystyczne lub specjalizacyjne,}}{staże naukowe, artystyczne lub specjalizacyjne,}
    \item \ifnumcomp{\@purposeNumber}{=}{6}{\ul{kursy językowe i inne kursy podnoszące kwalifikacje zawodowe,}}{kursy językowe i inne kursy podnoszące kwalifikacje zawodowe,}
    \item \ifnumcomp{\@purposeNumber}{=}{7}{\ul{praktyki zawodowe.}}{praktyki zawodowe.}
   \end{enumerate}
  \end{enumerate}
 \pagebreak
 \item \textbf{Specyfikacja kosztów wyjazdu}
  \begin{tabular}{M{.36\textwidth} M{0.56\textwidth}}
   koszty planowane & źródło finansowania (numer grantu lub umowy specyfikacja innego dokument)\\
   &\\
   \textit{\@cost} & \textit{\@fundingSource}
  \end{tabular}
  \vspace{1cm}
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
   \item zaproszenie,
   \item warunki finansowe.
  \end{enumerate}
 \item \textbf{W przypadku wyjazdu dłuższego niż miesiąc lub wyjazdu do pracy, do wniosku o skierowanie za granice należy dołączyć decyzje rektora o udzieleniu urlopu, otrzymana za pośrednictwem Działu Kadr.}

 Oświadczam, że zapoznałem/zapoznałam sie z treścią wyżej wymienionego Rozporządzenia Ministra Nauki i Szkolnictwa Wyższego z dnia 12 października 2006 r. (Dz. U. Nr 190, poz. 1405).

 Do wniosku załączam:
 \begin{enumerate}
  \item Bank i numer konta dewizowego
 \end{enumerate}
 \vspace{1cm}
 \begin{flushright}
  \parbox{.4\textwidth}{\rule{.4\textwidth}{0.4pt}\\
  \centering data i podpis}
 \end{flushright}
 \item \textbf{Opinia i akceptacja bezpośredniego przełożonego:}
 \vspace{1cm}
 \item \textbf{Akceptacja Dziekana Wydziału, Prorektora do spraw Badan Naukowych i Współpracy
 z Zagranica, Rektora:}
\end{enumerate}
}