package Semana03__AnaliseLexica;

/*
 * Analisador Léxico para reconhecer comentários em linguagens de programação
*/

public class AnalisadorLexico {
    /* Caracteres e Tokens */
    static final int LETTER = 0;
    static final int DIGIT = 1;
    static final int INT_LIT = 10;
    static final int IDENT = 11;
    static final int ASSIGN_OP = 20;
    static final int ADD_OP = 21;
    static final int SUB_OP = 22;
    static final int MULT_OP = 23;
    static final int DIV_OP = 24;
    static final int LEFT_PAREN = 25;
    static final int RIGHT_PAREN = 26;
    static final int LEFT_SLASH = 27;
    static final int ASTERISK = 28;
    static final int UNKNOWN = 99;
    static final int EOF = -1;
}
