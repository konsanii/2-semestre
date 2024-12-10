/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.banco;

/**
 *
 * @author Alunos
 */
public class Historicos {
    private String ID_Hist;
    private String Historico;
    
    public Historicos(){
    }

    /**
     * @param ID_Hist
     * @param Historico
     */
    public Historicos(String ID_Hist, String Historico) {
        // TODO code application logic here
    this.ID_Hist = ID_Hist;
    this.Historico = Historico;    
    }

    public String getID_Hist() {
        return ID_Hist;
    }

    public void setID_Hist(String ID_Hist) {
        this.ID_Hist = ID_Hist;
    }

    public String getHistorico() {
        return Historico;
    }

    public void setHistorico(String Historico) {
        this.Historico = Historico;
    }
}
