package com.mycompany.exercicio_1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Classe Pessoa com atributos nome e idade
class Pessoa implements Comparable<Pessoa> {
    private String nome;
    private int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    @Override
    public String toString() {
        return "Pessoa{" + "nome='" + nome + '\'' + ", idade=" + idade + '}';
    }

    @Override
    public int compareTo(Pessoa outraPessoa) {
        return this.nome.compareTo(outraPessoa.nome);
    }
}

public class exercicio_2 {
    public static void main(String[] args) {
        // Criando uma lista de objetos Pessoa
        List<Pessoa> pessoas = new ArrayList<>();
        pessoas.add(new Pessoa("Carlos", 30));
        pessoas.add(new Pessoa("Ana", 25));
        pessoas.add(new Pessoa("Bruno", 20));

        // Ordenando a lista de pessoas
        Collections.sort(pessoas);

        // Exibindo a lista ordenada
        System.out.println("Lista de pessoas ordenada: " + pessoas);
    }
}