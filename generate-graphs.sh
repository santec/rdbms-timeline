#!/bin/bash

# This script is used to generate graphs for the project RDBMS-timeline.


# include config
. generate-graphs.cnf


# only print a scring if in verbose mode
function verbose {
    if [ $VERBOSE -eq '1' ];
    then
        echo $1
    fi
}


# check if graphviz is installed
which dot > /dev/null
if [ $? -ne 0 ];
then
    echo "Graphviz is required."
    echo "Please download from http://www.graphviz.org/"
    exit 1
fi

for format in "${FORMAT_LIST[@]}"
do
    format_low=$( echo "$format" | tr '[:upper:]' '[:lower:]' )
    if [ $VERBOSE -eq '2' ];
    then
        v_option='-v'
    fi

    verbose "Generating $OUTPUT_FILENAME.$format_low"
    dot -T$format_low $v_option -o $OUTPUT_PATH$OUTPUT_FILENAME.$format_low RDBMS_timeline.dot
    exit_code=$?
    if [ $exit_code -ne 0 ];
    then
        echo "$format generation failed with exit code $exit_code"
    fi
done
