/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.banco;

/**
 *
 * @author Alunos
 */
public class Agencia {
    private String Num_agencia;
    private String Nome;
    private String Endereco;
    private String Numero;
    private String Complemento;
    private String Bairro;
    private String Cidade;
    private String UF;
    private String CEP;
    private String CNPJ;
    private String Gerente;
    

    /**
     * @param Num_agencia
     * @param Nome
     * @param Endereco
     * @param Numero
     * @param Complemento
     * @param Bairro
     * @param Cidade
     * @param UF
     * @param CEP
     * @param CNPJ
     * @param Gerente
     */
    public Agencia (String Num_agencia, String Nome, String Endereco, String Numero, 
            String Complemento, String Bairro, String Cidade, String UF, String CEP,
            String CNPJ, String Gerente  ) {
        // TODO code application logic here
    this.Num_agencia = Num_agencia;
    this.Nome = Nome;
    this.Endereco = Endereco;
    this.Numero = Numero;
    this.Complemento = Complemento;
    this.Bairro = Bairro;
    this.Cidade = Cidade;
    this.UF = UF;
    this.CEP = CEP;
    this.CNPJ = CNPJ;
    this.Gerente = Gerente;
    }
    
    public Agencia(){}

    public String getNum_agencia() {
        return Num_agencia;
    }

    public void setNum_agencia(String Num_agencia) {
        this.Num_agencia = Num_agencia;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getEndereco() {
        return Endereco;
    }

    public void setEndereco(String Endereco) {
        this.Endereco = Endereco;
    }

    public String getNumero() {
        return Numero;
    }

    public void setNumero(String Numero) {
        this.Numero = Numero;
    }

    public String getComplemento() {
        return Complemento;
    }

    public void setComplemento(String Complemento) {
        this.Complemento = Complemento;
    }

    public String getBairro() {
        return Bairro;
    }

    public void setBairro(String Bairro) {
        this.Bairro = Bairro;
    }

    public String getCidade() {
        return Cidade;
    }

    public void setCidade(String Cidade) {
        this.Cidade = Cidade;
    }

    public String getUF() {
        return UF;
    }

    public void setUF(String UF) {
        this.UF = UF;
    }

    public String getCEP() {
        return CEP;
    }

    public void setCEP(String CEP) {
        this.CEP = CEP;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getGerente() {
        return Gerente;
    }

    public void setGerente(String Gerente) {
        this.Gerente = Gerente;
    }
}
