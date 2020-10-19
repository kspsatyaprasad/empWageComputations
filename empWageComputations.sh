#!/bin/bash
EMP_RATE_PER_HR=20;
full_time_empHrs=8;
part_time_empHrs=4;
full_time_dailyWage=$(( EMP_RATE_PER_HR*full_time_empHrs ))
part_time_dailyWage=$(( EMP_RATE_PER_HR*part_time_empHrs ))
echo daily employee wage for full time hour is $full_time_dailyWage
echo daily employee wage for part time hour is $part_time_dailyWage
