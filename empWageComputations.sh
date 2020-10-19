#!/bin/bash
EMP_RATE_PER_HR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
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
dailyWage=$(( $empHrs*$EMP_RATE_PER_HR ))
echo daily wage of an employee is $dailyWage
