#! /bin/bash -x
echo "Welcome To EmpWageComputation"
function attendance()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
	fi
}

function main()
{
	attendance
}

main
