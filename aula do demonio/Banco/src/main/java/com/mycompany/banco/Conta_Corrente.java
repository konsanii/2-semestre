/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.banco;

/**
 *
 * @author Alunos
 */
public class Conta_Corrente {
    
    private String Num_conta;
    private String Num_agencia;
    private String ID_Cli;
    private String Saldo;

    /**
     * @param args the command line arguments
     */
    public Conta_Corrente(String Num_conta, String Num_agencia, String ID_Cli, String Saldo ) {
        // TODO code application logic here
    
    
    this.Num_conta = Num_conta;
    this.Num_agencia = Num_agencia;
    this.ID_Cli = ID_Cli;
    this.Saldo = Saldo;    
    }
   
    public Conta_Corrente (){}
    
    //tentativa de get e sett
    public String getNum_conta() { return Num_conta; }    
    public void setNum_conta(String Num_conta){this.Num_conta = Num_conta; }
    
    public String getNum_agencia() {return Num_agencia;}
    public void setNum_agencia(String Num_agencia){this.Num_agencia = Num_agencia; }
    
    public String getID_Cli() {return ID_Cli;}
    public void setID_Cli(String ID_Cli){this.ID_Cli = ID_Cli; }
    
    public String getSaldo() {return Saldo;}
    public void setSaldo(String Saldo){this.Saldo = Saldo; }
}
