#!/bin/bash
EMP_RATE_PER_HR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
monthlywage=0;
totalworkingDays=0;
totalEmpHr=0;
NUM_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=100;
empCheck=$(( RANDOM%3 ));
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
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
          $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
((totalworkingDays++))
totalEmpHrs=$(( totalEmpHrs+empHrs ))
dailyWage=$(( $empHrs*$EMP_RATE_PER_HR ))
monthlywage=$(( monthlywage+dailyWage ))
done
echo daily wage of an employee is $dailyWage
echo monthlywage of an employee is $monthlywage

