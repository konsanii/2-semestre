/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.exercicio_1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Exercicio_1 {
    public static void main(String[] args) {
       
        
        List<String> cores = new ArrayList<>();
        cores.add("azul");
        cores.add("amarelo");
        cores.add("vermelho");
        cores.add("verde");

       
        System.out.println("Sem ordenação: " + cores);

       
        Collections.sort(cores);
        System.out.println("Com ordenação: " + cores);

        
        cores.remove(1); 
        Collections.sort(cores);
        System.out.println("Após remover e ordenar novamente: " + cores);
    }
}