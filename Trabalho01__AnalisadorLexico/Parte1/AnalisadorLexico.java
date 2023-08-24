package Parte1;

public class AnalisadorLexico {
    public static void main(String[] args) {
        String text = args.length > 0 ? args[0] : "/* comentario teste */";
        System.out.printf("Texto analisado: %s%n", text);
        if (isValidComment(text))
            System.out.println("Comentário válido!");
        else
            System.out.println("Comentário inválido!");
    }

    static boolean isValidComment(String text) {
        text = text.trim();
        return text.startsWith("/*") && text.endsWith("*/");
    }
}
