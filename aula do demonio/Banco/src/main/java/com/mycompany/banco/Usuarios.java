package com.mycompany.banco;

/**
 *
 * @author Alunos
 */
public class Usuarios {
    private String Login;
    private String Senha;
    private int ID_Cli;
    private String Num_CC;
    
public Usuarios(String Login, String Senha, int ID_Cli, String Num_CC){
this.Login = Login;
this.Senha = Senha;
this.ID_Cli = ID_Cli;
this.Num_CC = Num_CC;
}

public Usuarios(){
}

    public String getLogin() {
        return Login;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }

    public int getID_Cli() {
        return ID_Cli;
    }

    public void setID_Cli(int ID_Cli) {
        this.ID_Cli = ID_Cli;
    }

    public String getNum_CC() {
        return Num_CC;
    }

    public void setNum_CC(String Num_CC) {
        this.Num_CC = Num_CC;
    }
   
    
    
}
  
