/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.calculadora_basica;

/**
 *
 * @author Alunos
 */
public class Calculadora_basica {

    public static void main(String[] args) {
        int num1, num2;		// Definindo uma variável do tipo inteiro
        int total;
        String op;
        num1 = Integer.parseInt(System.console().readLine("Digite Um Numero: "));
        op = System.console().readLine("Digite a operacao: ");
        num2 = Integer.parseInt(System.console().readLine("Digite Outro Numero: "));
        
        if ("+".equals(op)){  // Comparação de texto
            total = num1 + num2;
            System.out.printf ("A soma de "+num1+" + "+num2+" = "+total);
        }
        if ("-".equals(op)){  // Comparação de texto
            total = num1 - num2;
            System.out.printf ("A subtração de "+num1+" - "+num2+" = "+total);
        }
        
        if ("*".equals(op)){  // Comparação de texto
            total = num1 * num2;
            System.out.printf ("a multiplicação de "+num1+" * "+num2+" = "+total);
        }
        
        if ("%".equals(op)){  // Comparação de texto
            total = num1 / num2;
            System.out.printf ("a divisão de "+num1+" % "+num2+" = "+total);
        }
           // Continue a programação da sua calculadora daqui em diante2
    }
}
