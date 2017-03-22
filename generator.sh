#!/bin/bash
git pull

choice=$(whiptail --title "IFT documents generator" --menu "Which document would you like to create?" 25 78 16 \
"Skierowanie" "Wniosek o skierowanie za granicę. (Scientific collaboration)" \
"Podroz" "Wniosek podróż służbowa. (Conference)" 3>&1 1>&2 2>&3)
firstName=$(whiptail --inputbox "What is your first name" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
lastName=$(whiptail --inputbox "What is your last name" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
position=$(whiptail --inputbox "What is your position" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
institute=$(whiptail --inputbox "What is your institute" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
destinationEvent=$(whiptail --inputbox "What is your destination event" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
destinationCountry=$(whiptail --inputbox "What is your destination country" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
destinationCity=$(whiptail --inputbox "What is your destination city" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
destinationInstitution=$(whiptail --inputbox "What is your destination institution" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)

if [ "$choice" == "Skierowanie" ]; then
  purposeNumber=$(whiptail --title "IFT document generator" --menu "What is the purpose option for visit?" 25 78 16 \
"0" "Scientific research." \
"1" "Teaching activities." \
"2" "First or second level studies." \
"3" "Postgraduate studies." \
"4" "PhD studies." \
"5" "Scientific training." \
"6" "Language courses." \
"7" "Professional trainings." 3>&1 1>&2 2>&3)
else
  purposeNumber=$(whiptail --title "IFT document generator" --menu "What is the purpose option for visit?" 25 78 16 \
"0" "Conference, symposium" \
"1" "Training." \
"2" "Course." \
"3" "Others." 3>&1 1>&2 2>&3)
fi

datesFrom=$(whiptail --inputbox "Starting date of your visit?" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
datesTo=$(whiptail --inputbox "Ending date of your visit?" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
leaveFrom=$(whiptail --inputbox "Starting date of your leave?" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
leaveTo=$(whiptail --inputbox "Ending date of your leave?" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
purpose=$(whiptail --inputbox "What is the purpose of your visit? (invited professor/scientific guest/scientific project/talk/poster)" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
contributionTitle=$(whiptail --inputbox "Provide the title of your contribution/project" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
cost=$(whiptail --inputbox "Provide the approximate total cost in PLN" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
travelCost=$(whiptail --inputbox "Provide the travel cost" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
hotelCost=$(whiptail --inputbox "Provide the hotel cost" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
perDiemCost=$(whiptail --inputbox "Provide the per diem cost" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
feeCost=$(whiptail --inputbox "Provide the fee cost" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
otherCost=$(whiptail --inputbox "Provide other costs" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
totalCostPLN=$(whiptail --inputbox "Provide the cost which will be spent in PLN" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
totalCostCurrency=$(whiptail --inputbox "Provide the cost which will be spent in other currencies" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
fundingSource=$(whiptail --inputbox "Provide your funding source" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)
classes=$(whiptail --inputbox "Describe your teching duties substitution/postponing" 8 78 --title "IFT document generator" 3>&1 1>&2 2>&3)

echo "Generating latex files for the following data:"
echo "Document choice: $choice"
echo "First name: $firstName"
echo "Last name: $lastName"
echo "Position: $position"
echo "Institute: $institute"
echo "Destination event: $destinationEvent"
echo "Destination country: $destinationCountry"
echo "Destination city: $destinationCity"
echo "Destination institution: $destinationInstitution"
echo "Purpose number: $purposeNumber"
echo "Visit from: $datesFrom"
echo "Visit to: $datesTo"
echo "Leave from: $leaveFrom"
echo "Leave to: $leaveTo"
echo "Purpose: $purpose"
echo "Contribution/project title: $contributionTitle"
echo "Total cost in PLN: $cost"
echo "Travel cost: $travelCost"
echo "Hotel cost: $hotelCost"
echo "Per diem cost: $perDiemCost"
echo "Fee cost: $feeCost"
echo "Other costs: $otherCost"
echo "Total cost in PLN:$totalCostPLN"
echo "Total cost in other currencies: $totalCostCurrency"
echo "Funding source: $fundingSource"
echo "Classes substitution/postponing: $classes"


#Generate ankietaWyjazdowa.pdf
echo "\documentclass{ankietaWyjazdowa}" > ankietaWyjazdowa.tex
echo "\firstName{$firstName}" >> ankietaWyjazdowa.tex
echo "\lastName{$lastName}" >> ankietaWyjazdowa.tex
echo "\destinationEvent{$destinationEvent}" >> ankietaWyjazdowa.tex
echo "\destinationCountry{$destinationCountry}" >> ankietaWyjazdowa.tex
echo "\destinationCity{$destinationCity}" >> ankietaWyjazdowa.tex
echo "\destinationInstitution{$destinationInstitution}" >> ankietaWyjazdowa.tex
echo "\datesFrom{$datesFrom}" >> ankietaWyjazdowa.tex
echo "\datesTo{$datesTo}" >> ankietaWyjazdowa.tex
echo "\leaveFrom{$leaveFrom}" >> ankietaWyjazdowa.tex
echo "\leaveTo{$leaveTo}" >> ankietaWyjazdowa.tex
echo "\purpose{$purpose}" >> ankietaWyjazdowa.tex
echo "\contributionTitle{$contributionTitle}" >> ankietaWyjazdowa.tex
echo "\cost{$cost}" >> ankietaWyjazdowa.tex
echo "\fundingSource{$fundingSource}" >> ankietaWyjazdowa.tex
echo "\classes{$classes}" >> ankietaWyjazdowa.tex
echo "\begin{document} \maketitle \makeAnkieta \end{document}" >> ankietaWyjazdowa.tex

pdflatex ankietaWyjazdowa.tex

#Generate wniosek
if [ "$choice" == "Skierowanie" ]; then
  echo "\documentclass{wniosekOSkierowanieZaGranice}" > wniosekOSkierowanieZaGranice.tex
  echo "\firstName{$firstName}" >> wniosekOSkierowanieZaGranice.tex
  echo "\lastName{$lastName}" >> wniosekOSkierowanieZaGranice.tex
  echo "\position{$position}" >> wniosekOSkierowanieZaGranice.tex
  echo "\institute{$institute}" >> wniosekOSkierowanieZaGranice.tex
  echo "\destinationEvent{$destinationEvent}" >> wniosekOSkierowanieZaGranice.tex
  echo "\destinationCountry{$destinationCountry}" >> wniosekOSkierowanieZaGranice.tex
  echo "\destinationCity{$destinationCity}" >> wniosekOSkierowanieZaGranice.tex
  echo "\destinationInstitution{$destinationInstitution}" >> wniosekOSkierowanieZaGranice.tex
  echo "\purposeNumber{$purposeNumber}" >> wniosekOSkierowanieZaGranice.tex
  echo "\datesFrom{$datesFrom}" >> wniosekOSkierowanieZaGranice.tex
  echo "\datesTo{$datesTo}" >> wniosekOSkierowanieZaGranice.tex
  echo "\leaveFrom{$leaveFrom}" >> wniosekOSkierowanieZaGranice.tex
  echo "\leaveTo{$leaveTo}" >> wniosekOSkierowanieZaGranice.tex
  echo "\purpose{$purpose}" >> wniosekOSkierowanieZaGranice.tex
  echo "\contributionTitle{$contributionTitle}" >> wniosekOSkierowanieZaGranice.tex
  echo "\cost{$cost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\travelCost{$travelCost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\perDiemCost{$perDiemCost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\hotelCost{$hotelCost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\feeCost{$feeCost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\otherCost{$otherCost}" >> wniosekOSkierowanieZaGranice.tex
  echo "\totalCostPLN{$totalCostPLN}" >> wniosekOSkierowanieZaGranice.tex
  echo "\totalCostCurrency{$totalCostCurrency}" >> wniosekOSkierowanieZaGranice.tex
  echo "\fundingSource{$fundingSource}" >> wniosekOSkierowanieZaGranice.tex
  echo "\classes{$classes}" >> wniosekOSkierowanieZaGranice.tex
  echo "\begin{document} \maketitle \makeWniosek \end{document}" >> wniosekOSkierowanieZaGranice.tex
  pdflatex wniosekOSkierowanieZaGranice.tex
else
  echo "\documentclass{wniosekPodrozSluzbowaZaGranice}" > wniosekPodrozSluzbowaZaGranice.tex
  echo "\firstName{$firstName}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\lastName{$lastName}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\position{$position}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\institute{$institute}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\destinationEvent{$destinationEvent}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\destinationCountry{$destinationCountry}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\destinationCity{$destinationCity}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\destinationInstitution{$destinationInstitution}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\purposeNumber{$purposeNumber}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\datesFrom{$datesFrom}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\datesTo{$datesTo}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\leaveFrom{$leaveFrom}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\leaveTo{$leaveTo}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\purpose{$purpose}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\contributionTitle{$contributionTitle}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\cost{$cost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\travelCost{$travelCost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\perDiemCost{$perDiemCost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\hotelCost{$hotelCost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\feeCost{$feeCost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\otherCost{$otherCost}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\totalCostPLN{$totalCostPLN}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\totalCostCurrency{$totalCostCurrency}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\fundingSource{$fundingSource}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\classes{$classes}" >> wniosekPodrozSluzbowaZaGranice.tex
  echo "\begin{document} \maketitle \makeWniosek \end{document}" >> wniosekPodrozSluzbowaZaGranice.tex
  pdflatex wniosekPodrozSluzbowaZaGranice.tex
fi

