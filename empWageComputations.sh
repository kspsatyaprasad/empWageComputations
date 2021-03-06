#!/bin/bash
EMP_RATE_PER_HR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
monthlywage=0;
totalworkingDays=0;
totalEmpHr=0;
NUM_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=100;
totalwage=0;
function getWorkHrs() {
local empCheck=$1
case $empCheck in
$IS_FULL_TIME)
empHrs=8
;;
$IS_PART_TIME)
empHrs=4
;;
*)
empHrs=0
;;
esac
echo $empHrs
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
          $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
((totalworkingDays++))
empCheck=$(( RANDOM%3 ));
empHrs="$( getWorkHrs $empCheck )"
totalEmpHrs=$(( totalEmpHrs+empHrs ))
dailyWage[$totalworkingDays]=$(( $empHrs*$EMP_RATE_PER_HR ))
(( totalwage += ${dailyWage[$totalworkingDays]} ))
monthlywage=$(( monthlywage+${dailyWage[$totalworkingDays]} ))
echo "Day ${totalworkingDays}          ${dailyWage[$totalworkingDays]}         $totalwage"
done
totalwage=$(( totalEmpHrs*EMP_RATE_PER_HR ));
echo monthlywage of an employee is $monthlywage
echo totalwage of an employee is $totalwage
echo daily wage of all days : ${dailyWage[@]}
echo days corresponding to dailyWage : Day ${!dailyWage[@]}
