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
public class Adulto {
    private Integer id;
    private String calle;
    private int zipcode;
    private String estado;
    private String telefono;
    private String ciudad;
    private Date expiracion;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCalle() {
        return calle;
    }
    public Adulto(){
        
    }

    public Adulto(Integer id, String calle, int zipcode, String estado, String telefono, String ciudad, Date expiracion) {
        this.id = id;
        this.calle = calle;
        this.zipcode = zipcode;
        this.estado = estado;
        this.telefono = telefono;
        this.ciudad = ciudad;
        this.expiracion = expiracion;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public Date getExpiracion() {
        return expiracion;
    }

    public void setExpiracion(Date expiracion) {
        this.expiracion = expiracion;
    }
    
}
