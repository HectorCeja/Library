/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria.controlador;

import java.sql.Date;

/**
 *
 * @author Hector
 */
public class Joven {
    private Date cumpleaños;
    private int idMember;
    private int idAdulto;
    
     public Joven(Date cumple,int idMember ,int idAdulto) {
        this.cumpleaños = cumple;
        this.idMember = idMember;
        this.idAdulto = idAdulto;
    }

    public Joven() {

    }

    public Date getCumpleaños() {
        return cumpleaños;
    }

    public void setCumpleaños(Date cumpleaños) {
        this.cumpleaños = cumpleaños;
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
    }

    public int getIdAdulto() {
        return idAdulto;
    }

    public void setIdAdulto(int idAdulto) {
        this.idAdulto = idAdulto;
    }
    
    
    
    
}
