import AddingParser.ParseException;
import AddingParser.AddingParser;

public class TestAddingParser {
    public static void main(String[] args) {
        try {
            AddingParser parser = new AddingParser(System.in);
            System.out.println("Enter your program:");
            parser.Start(); // Call the Start() method to start parsing

            System.out.println("Parsing successful!");
        } catch (ParseException e) {
            System.err.println("Parsing error: " + e.getMessage());
        }
    }
}
