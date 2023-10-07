import java.io.InputStream;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.Scanner;


public class App {
    public static void main(String[] args) {
        System.out.println("Which parser would you like to run?");
        System.out.println("(1) A Adder");
        System.out.println("(2) For Loop");
        System.out.print("Enter your choice: ");
        Scanner input = new Scanner(System.in);
        int choice = input.nextInt();
        switch (choice) {
            case 1:
                runAAdder();
                break;
            case 2:
                runForsParser();
                break;
            default:
                System.err.println("Invalid choice!");
        }
        input.close();
    }

    private static InputStream getFileOrText() {
        System.out.println("Do you want to parse a file or enter text?");
        System.out.println("(1) File");
        System.out.println("(2) Text");
        System.out.print("Enter your choice: ");
        Scanner input = new Scanner(System.in);
        int choice = input.nextInt();
        switch (choice) {
            case 1:
                System.out.print("Enter file path: ");
                String filePath = input.next();
                try {
                    return new FileInputStream(filePath);
                } catch (Exception e) {
                    System.err.println("Parsing error: " + e.getMessage());
                    return null;
                }
            case 2:
                System.out.println("Enter your program: ");
                return System.in;
            default:
                System.err.println("Invalid choice!");
                return getFileOrText();
        }
    }

    private static void runAAdder() {
        try {
            InputStream input = getFileOrText();
            System.out.println("Remember to end the program with a ';', as it represents the empty symbol");
            AAdderParser parser = new AAdderParser(input);
            parser.Start();
            System.out.println("Program parsed successfully!");
        } catch (Exception e) {
            System.err.println("Parsing error: " + e.getMessage());
        }
    }

    private static void runForsParser() {
        try {
            InputStream input = getFileOrText();
            ForLoopParser parser = new ForLoopParser(input);
            parser.Start();
            System.out.println("Program parsed successfully!");
        } catch (Exception e) {
            System.err.println("Parsing Error: " + e.getMessage());
        }
    }
}
