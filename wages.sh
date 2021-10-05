#!/bin/bash -x
parttime=1;
fulltime=2;
totalsalary=0;
rateperhour=20;
noofworkingdays=20;

for (( day=1; day<=$noofworkingdays; day++ ))
do 	
	empcheck=$((RANDOM%3));
		case $empcheck in
			$fulltime)
				emphrs=8
				   ;;
			$parttime)
				emphrs=4
				   ;;
			*)
				emphrs=0
				   ;;
		esac
		salary=$(($emphrs*$rateperhour));
		totalsalary=$(($totalsalary+$salary));
done
