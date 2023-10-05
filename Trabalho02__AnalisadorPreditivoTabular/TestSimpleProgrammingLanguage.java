import SimpleProgrammingLanguage.ParseException;
import SimpleProgrammingLanguage.SimpleProgrammingLanguage;

public class TestSimpleProgrammingLanguage {
    public static void main(String[] args) {
        try {
            SimpleProgrammingLanguage parser = new SimpleProgrammingLanguage(System.in);
            System.out.println("Enter your program:");
            parser.Start(); // Call the Start() method to start parsing

            System.out.println("Parsing successful!");
        } catch (ParseException e) {
            System.err.println("Parsing error: " + e.getMessage());
        }
    }
}
