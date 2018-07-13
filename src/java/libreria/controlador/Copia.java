/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria.controlador;

/**
 *
 * @author Hector
 */
public class Copia {
    private Integer id;
    private Integer copy;
    private String loan;
    private Integer title;

    public Copia(Integer id, Integer copy, String loan, Integer title) {
        this.id = id;
        this.copy = copy;
        this.loan = loan;
        this.title = title;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCopy() {
        return copy;
    }

    public void setCopy(Integer copy) {
        this.copy = copy;
    }

    public String getLoan() {
        return loan;
    }

    public void setLoan(String loan) {
        this.loan = loan;
    }

    public Integer getTitle() {
        return title;
    }

    public void setTitle(Integer title) {
        this.title = title;
    }
    
    public Copia(){
        
    }
}
