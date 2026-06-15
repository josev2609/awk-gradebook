#!/bin/bash

file="$1"

awk -f grade_by_student.awk "$file" | head -1
awk -f grade_by_student.awk "$file" | tail -n +2 | sort
