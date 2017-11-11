# This script is used to generate graphs for the project RDBMS-timeline.


# check if graphviz is installed
which dot > /dev/null
if [ $? -ne 0 ];
then
    echo "Graphviz is required."
    echo "Please download from http://www.graphviz.org/"
    exit 1
fi

# generate PNG
dot -Tpng -o RDBMS_timeline.png RDBMS_timeline.dot
exit_code=$?
if [ $exit_code -ne 0 ];
then
    echo "PNG generation failed with exit code $exit_code"
fi

# generate SVG
dot -Tsvg -o RDBMS_timeline.svg RDBMS_timeline.dot
exit_code=$?
if [ $exit_code -ne 0 ];
then
    echo "SVG generation failed with exit code $exit_code"
fi
