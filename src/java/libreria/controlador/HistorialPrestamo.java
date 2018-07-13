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
public class HistorialPrestamo {
    private Integer isbn;
    private Integer copy;
    private Integer title;
    private Integer member;
    private Date outdate;
    private Date indate;
    private Date duedate;
    private Double assessed;
    private Double paid;
    private Double waived;
    private String observaciones;

    public HistorialPrestamo(Integer isbn, Integer copy, Integer title, Integer member, Date outdate, Date indate, Date duedate, Double assessed, Double paid, Double waived, String observaciones) {
        this.isbn = isbn;
        this.copy = copy;
        this.title = title;
        this.member = member;
        this.outdate = outdate;
        this.indate = indate;
        this.duedate = duedate;
        this.assessed = assessed;
        this.paid = paid;
        this.waived = waived;
        this.observaciones = observaciones;
    }
    public HistorialPrestamo(){
        
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

    public Date getIndate() {
        return indate;
    }

    public void setIndate(Date indate) {
        this.indate = indate;
    }

    public Date getDuedate() {
        return duedate;
    }

    public void setDuedate(Date duedate) {
        this.duedate = duedate;
    }

    public Double getAssessed() {
        return assessed;
    }

    public void setAssessed(Double assessed) {
        this.assessed = assessed;
    }

    public Double getPaid() {
        return paid;
    }

    public void setPaid(Double paid) {
        this.paid = paid;
    }

    public Double getWaived() {
        return waived;
    }

    public void setWaived(Double waived) {
        this.waived = waived;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }
    
}
