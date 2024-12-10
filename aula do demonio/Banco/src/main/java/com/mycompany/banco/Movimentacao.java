/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.banco;

/**
 *
 * @author Alunos
 */
public class Movimentacao {
   private String Num_CC;
   private String Num_agencia;
   private String Num_Doc;
   private String Data_Mov;
   private String Debito_Credito;
   private int ID_His;
   private String Compl_Hist;
   private int Valor;
   private int Saldo ;
 

public Movimentacao(String Num_CC, String Num_agencia, String Num_Doc, String Data_Mov,
        String Debito_Credito, int ID_His, String Compl_His, int Valor, int Saldo){
    this.Num_CC = Num_CC;
    this.Num_agencia = Num_agencia;
    this.Num_Doc = Num_Doc;
    this.Data_Mov = Data_Mov;
    this.Debito_Credito = Debito_Credito;
    this.ID_His = ID_His;
    this.Valor = Valor;
    this.Saldo = Saldo;
    }

public Movimentacao(){
    
}

    public String getNum_CC() {
        return Num_CC;
    }

    public void setNum_CC(String Num_CC) {
        this.Num_CC = Num_CC;
    }

    public String getNum_agencia() {
        return Num_agencia;
    }

    public void setNum_agencia(String Num_agencia) {
        this.Num_agencia = Num_agencia;
    }

    public String getNum_Doc() {
        return Num_Doc;
    }

    public void setNum_Doc(String Num_Doc) {
        this.Num_Doc = Num_Doc;
    }

    public String getData_Mov() {
        return Data_Mov;
    }

    public void setData_Mov(String Data_Mov) {
        this.Data_Mov = Data_Mov;
    }

    public String getDebito_Credito() {
        return Debito_Credito;
    }

    public void setDebito_Credito(String Debito_Credito) {
        this.Debito_Credito = Debito_Credito;
    }

    public int getID_His() {
        return ID_His;
    }

    public void setID_His(int ID_His) {
        this.ID_His = ID_His;
    }

    public String getCompl_Hist() {
        return Compl_Hist;
    }

    public void setCompl_Hist(String Compl_Hist) {
        this.Compl_Hist = Compl_Hist;
    }

    public int getValor() {
        return Valor;
    }

    public void setValor(int Valor) {
        this.Valor = Valor;
    }

    public int getSaldo() {
        return Saldo;
    }

    public void setSaldo(int Saldo) {
        this.Saldo = Saldo;
    }
}

