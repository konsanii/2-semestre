/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.banco;

import javax.swing.JOptionPane;

/**
 *
 * @author Alunos
 */
public class Clientes {
    private char ID_Cli;
    private String Nome;
    private String CPF;
    private String Endereco;
    private String Numero;
    private String Complemento;
    private String Bairro;
    private String Cidade;
    private String UF;
    private String Cep;
    private String Email;
    private String Sexo;
 
    public Clientes(char ID_cli, String Nome, String CPF, String Endereco, String Numero,
            String Complemento, String Bairro, String Cidade, String UF, String Cep, String Email, String Sexo){
        this.ID_Cli = ID_Cli;
        this.Nome = Nome;
        this.CPF = CPF;
        this.Endereco = Endereco;
        this.Numero = Numero;
        this.Complemento = Complemento;
        this.Bairro = Bairro;
        this.Cidade = Cidade;
        this.UF = UF;
        this.Cep = Cep;
        this.Sexo = Sexo;
        this.Email = Email;}
        
        
    public Clientes(){
    
}
    
    public String getNome() { return Nome; }
    public void setNome(String Nome) {
        if (Nome.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Nome não pode ser nulo!");
        }
        if (Nome.isBlank()) {
            JOptionPane.showMessageDialog(null, "Nome não estar em branco!");
        }
        this.Nome = Nome;
    }
 
    public String getCPF() { return CPF; }
    public void setCPF(String CPF) {
        if (CPF.isEmpty()) {
            JOptionPane.showMessageDialog(null, "CPF não pode ser nulo!");
        }
        if (CPF.isBlank()) {
            JOptionPane.showMessageDialog(null, "CPF não estar em branco!");
        }
        CPF = CPF.replace(".", "").replace("-", "");
        if (CPF.length() != 11) {
            JOptionPane.showMessageDialog(null, "CPF inválido");
        }
 
        int[] digitos = new int[11];
        for (int i = 0; i < 11; i++) {
            digitos[i] = Integer.parseInt(String.valueOf(CPF.charAt(i)));
        }
 
        int soma = 0;
        int tamanho = 10;
        for (int i = 0; i < 9; i++) {
            soma += digitos[i] * tamanho;
            tamanho--;
        }
 
        int digitoVerificador = (soma * 10) % 11;
        if (digitoVerificador == 10 || digitoVerificador == 11) {
            digitoVerificador = 0;
        }
 
        if (digitoVerificador != digitos[9]) {
            JOptionPane.showMessageDialog(null, "CPF inválido");
        }
 
        soma = 0;
        tamanho = 11;
        for (int i = 0; i < 10; i++) {
            soma += digitos[i] * tamanho;
            tamanho--;
        }
 
        digitoVerificador = (soma * 10) % 11;
        if (digitoVerificador == 10 || digitoVerificador == 11) {
            digitoVerificador = 0;
        }
 
        if (digitoVerificador == digitos[10]) {
            this.CPF = CPF;
            System.out.print("CPF cadastrado com sucesso");
        }
    }
 
    public String getUF() { return UF; }
    public void setUF(String UF) {
        String[] estados = {
            "AC","AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS",
            "MG", "PA", "PB", "PR", "PE", "PI", "RR", "RO", "RJ", "RN", "RS", "SC",
            "SP", "SE", "TO"
        };
        boolean UFValido = false;
        if (UF.isEmpty()) {
            JOptionPane.showMessageDialog(null, "UF não pode ser nulo!");
        }
        if (UF.isBlank()) {
            JOptionPane.showMessageDialog(null, "UF não estar em branco!");
        }
        if (UF.length() < 2) {
            JOptionPane.showMessageDialog(null, "UF inválido!");
        }
        for (String estado : estados) {
            if (UF.equals(estado)) {
                UFValido = true;
            }
        }
        if (UFValido) {
            this.UF = UF;
            JOptionPane.showMessageDialog(null, "UF registrado com sucesso!");
        } else {
            JOptionPane.showMessageDialog(null, "UF inválido!");
        }
    }
 
    public String getCep() { return Cep; }
    public void setCep(String Cep) {
        this.Cep = Cep;
    }
    
    public String getSexo() { return Sexo; }
    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }
 
    public String getEmail() { return Email; }
    public void setEmail(String Email) {
        if (Email.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Email não pode ser nulo!");
        }
        if (Email.isBlank()) {
            JOptionPane.showMessageDialog(null, "Email não estar em branco!");
        }
        this.Email = Email;
    }
    public String getEndereco() {return Endereco;}
    public void setEndereco(String endereco){
        if (endereco.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Endereço não pode ser nulo!");
        }
        if (endereco.isBlank()) {
            JOptionPane.showMessageDialog(null, "Endereço não estar em branco!");
        }
        if (endereco.length() < 4) {
            JOptionPane.showMessageDialog(null, "Endereço inválido!");
        }
        this.Endereco = endereco;
    }
    public char getID_Cli() {return ID_Cli;}
    public void setID_Cli(char ID_Cli){this.ID_Cli = ID_Cli; }
    
    public String getNumero() {return Numero;}
    public void setNumero(String Numero){this.Numero = Numero; }
 
    public String getComplemento() {return Complemento;}
    public void setComplemento(String Complemento){this.Complemento = Complemento; }
    
    public String getBairro() {return Bairro;}
    public void setBairro(String Bairro){this.Bairro = Bairro; }
    
    public String getCidade() {return Cidade;}
    public void setCidade(String Cidade){this.Cidade = Cidade; }
}
