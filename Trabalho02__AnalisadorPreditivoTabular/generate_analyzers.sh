echo "Generating a adder parser"
java -cp lib/javacc.jar javacc -OUTPUT_DIRECTORY=src/AAdder src/AAdder/AAdderParser.jj

echo "Generating for loop parser"
java -cp lib/javacc.jar javacc -OUTPUT_DIRECTORY=src/ForLoop src/ForLoop/ForLoopParser.jj

echo "Generated parsers successfully"
read -p "Press enter to close..."