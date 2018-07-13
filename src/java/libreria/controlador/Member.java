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
public class Member {

    private Integer id;
    private String name;
    private String middleInitial;
    private String lastname;

    public Member(int id, String name, String middleInitial, String lastname) {
        this.id = id;
        this.name = name;
        this.middleInitial = middleInitial;
        this.lastname = lastname;
    }

    public Member() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMiddleInitial() {
        return middleInitial;
    }

    public void setMiddleInitial(String middleInitial) {
        this.middleInitial = middleInitial;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
}
