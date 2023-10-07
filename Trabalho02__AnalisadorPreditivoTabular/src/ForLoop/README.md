## Important

- `src/ForLoop/ForLoopParser.jj`
- `src/ForLoop/*.txt`

The files above are not auto generated and should not be removed. They are used to generate and test the parser.

## How to run

To generate the parser, navigate to the root of the project and either follow instructions from the `README.md` or run the following command:

```bash
java -cp lib/javacc.jar javacc -OUTPUT_DIRECTORY=src/ForLoop src/ForLoop/ForLoopParser.jj
```
