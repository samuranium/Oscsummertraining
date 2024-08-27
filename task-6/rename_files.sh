#!/bin/bash
path=$1
if [[ -d "$path" ]]
	then
		for file in "$path"/*
		do
			if [[ -f "$file" ]]
				then
					if [[ "$file" == *.txt ]]
						then
							new_name="$path/old_$(basename "$file")"	
							mv "$file" "$new_name"
					fi
			fi
		done
fi
