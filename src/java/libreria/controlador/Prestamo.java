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
public class Prestamo {
    private Integer isbn;
    private Integer copy;
    private Integer title;
    private Integer member;
    private Date outdate;
    
    public Prestamo(){
        
    }

    public Prestamo(Integer isbn, Integer copy, Integer title, Integer member, Date outdate, Date duedate) {
        this.isbn = isbn;
        this.copy = copy;
        this.title = title;
        this.member = member;
        this.outdate = outdate;
        this.duedate = duedate;
    }
    
    

    public Integer getIsbn() {
        return isbn;
    }

    public void setIsbn(Integer isbn) {
        this.isbn = isbn;
    }

    public Integer getCopy() {
        return copy;
    }

    public void setCopy(Integer copy) {
        this.copy = copy;
    }

    public Integer getTitle() {
        return title;
    }

    public void setTitle(Integer title) {
        this.title = title;
    }

    public Integer getMember() {
        return member;
    }

    public void setMember(Integer member) {
        this.member = member;
    }

    public Date getOutdate() {
        return outdate;
    }

    public void setOutdate(Date outdate) {
        this.outdate = outdate;
    }

    public Date getDuedate() {
        return duedate;
    }

    public void setDuedate(Date duedate) {
        this.duedate = duedate;
    }
    private Date duedate;
}
