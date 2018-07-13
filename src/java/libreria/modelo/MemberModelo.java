/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria.modelo;

import libreria.controlador.Member;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.LinkedList;
import libreria.controlador.Adulto;
import libreria.controlador.Copia;
import libreria.controlador.HistorialPrestamo;
import libreria.controlador.Joven;
import libreria.controlador.Libro;
import libreria.controlador.Prestamo;

/**
 *
 * @author Hector
 */
public class MemberModelo {
    
    public static LinkedList<Copia> getCopias() {
        LinkedList<Copia> listaCopias = new LinkedList<Copia>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from copy");
            while (rs.next()) {
                Copia copia = new Copia();
                copia.setId(rs.getInt("isbn"));
                copia.setTitle(rs.getInt("title_no"));
                copia.setCopy(rs.getInt("copy_no"));
                copia.setLoan(rs.getString("on_loan"));
               
                listaCopias.add(copia);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaCopias;
    } 
    
    public static LinkedList<Libro> getLibros() {
        LinkedList<Libro> listaLibros = new LinkedList<Libro>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from title");
            while (rs.next()) {
                Libro libro = new Libro();
                libro.setId(rs.getInt("title_no"));
                libro.setTitulo(rs.getString("title"));
                libro.setAutor(rs.getString("author"));
                libro.setSinopsis(rs.getString("synopsis"));
               
                listaLibros.add(libro);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaLibros;
    } 
    public static LinkedList<HistorialPrestamo> getHistorialPrestamos() {
        LinkedList<HistorialPrestamo> listaPrestamos = new LinkedList<HistorialPrestamo>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from loanhist");
            while (rs.next()) {
                HistorialPrestamo prestamo = new HistorialPrestamo();
                prestamo.setIsbn(rs.getInt("isbn"));
                prestamo.setCopy(rs.getInt("copy_no"));
                prestamo.setTitle(rs.getInt("title_no"));
                prestamo.setMember(rs.getInt("member_no"));
                prestamo.setOutdate(rs.getDate("out_date"));
                prestamo.setDuedate(rs.getDate("due_date"));
                prestamo.setAssessed(rs.getDouble("fine_assessed"));
                prestamo.setPaid(rs.getDouble("fine_paid"));
                prestamo.setWaived(rs.getDouble("fine_waived"));
                prestamo.setIndate(rs.getDate("in_date"));
                if(rs.getString("remarks")==null){
                    prestamo.setObservaciones("");
                }else{
                    prestamo.setObservaciones(rs.getString("remarks"));
                }
               
                listaPrestamos.add(prestamo);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaPrestamos;
     }
    
     public static LinkedList<Prestamo> getPrestamos() {
        LinkedList<Prestamo> listaPrestamos = new LinkedList<Prestamo>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from loan");
            while (rs.next()) {
                Prestamo prestamo = new Prestamo();
                prestamo.setIsbn(rs.getInt("isbn"));
                prestamo.setCopy(rs.getInt("copy_no"));
                prestamo.setTitle(rs.getInt("title_no"));
                prestamo.setMember(rs.getInt("member_no"));
                prestamo.setOutdate(rs.getDate("out_date"));
                prestamo.setDuedate(rs.getDate("due_date"));
               
                listaPrestamos.add(prestamo);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaPrestamos;
    }
    
     public static LinkedList<Adulto> getAdultos() {
        LinkedList<Adulto> listaAdultos = new LinkedList<Adulto>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from adult");
            while (rs.next()) {
                Adulto adulto = new Adulto();
                adulto.setId(rs.getInt("member_no"));
                adulto.setCalle(rs.getString("street"));
                adulto.setZipcode(rs.getInt("zipcode"));
                adulto.setCiudad(rs.getString("city"));
                adulto.setEstado(rs.getString("state"));
                if (rs.getString("phone_no")==null) {
                    adulto.setTelefono("");
                }else{
                    adulto.setTelefono(rs.getString("phone_no"));
                }
                adulto.setExpiracion(rs.getDate("expr_date"));
               
                listaAdultos.add(adulto);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaAdultos;
    }
    public static LinkedList<Member> getContactos() {
        LinkedList<Member> listaContactos = new LinkedList<Member>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from member");
            while (rs.next()) {
                Member member = new Member();
                member.setId(rs.getInt("member_no"));
                member.setName(rs.getString("name"));
                member.setLastname(rs.getString("lastname"));
                if (rs.getString("middleinitial")==null) {
                    member.setMiddleInitial("");
                }else{
                    member.setMiddleInitial(rs.getString("middleinitial"));
                }
                
                listaContactos.add(member);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaContactos;
    }
    public static LinkedList<Joven> getJovenes() {
            LinkedList<Joven> listaJovenes = new LinkedList<Joven>();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conexion = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select * from juvenile");
            while (rs.next()) {
                Joven joven = new Joven();
                joven.setCumpleaños(rs.getDate("birthdate"));
                joven.setIdMember(rs.getInt("member_no"));
                joven.setIdAdulto(rs.getInt("adult_member_no"));
                
                listaJovenes.add(joven);
            }
            rs.close();
            st.close();
            conexion.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaJovenes;
    }
    public static Member getMember(int id) throws Exception {
        Member member = new Member();
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();
            
            String query = ("select * from member where member_no="+id+"");
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) {
                member.setId(rs.getInt("member_no"));
                member.setName(rs.getString("name"));
                member.setLastname(rs.getString("lastname"));
                if (rs.getString("middleinitial")==null) {
                    member.setMiddleInitial("");
                }else{
                    member.setMiddleInitial(rs.getString("middleinitial"));
                }
            }
            rs.close();
            st.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo getMember");
            
        }
        return member;
    }
    public static void insertMember(int id,String name,String initial,String lastname) throws Exception {
   
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();
            
            String query = "insert into member(member_no,name,middleinitial,lastname) values("+id+",'"+name+"','"+initial+"','"+lastname+"')";
            st.executeUpdate(query);
            
            st.close();
            con.close();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo insertMember");
            
        }
    }
    public static void deleteMember(int id) throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();
            String query3 = ("DELETE FROM juvenile WHERE member_no="+id);
            st3.executeUpdate(query3);
            String query = ("DELETE FROM adult WHERE member_no="+id);
            st.executeUpdate(query);
            String query2 = ("DELETE FROM member WHERE member_no="+id);
            st2.execute(query2);
            /*trigger para dar de alta prestamos o baja prestamo*/
            st.close();
            st2.close();
            con.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo deleteMember");
            throw new Exception("Excepcion encontrada: "+e.getMessage());
        }
    }
    public static String deleteAdulto(int id) throws Exception {
        String mensaje="";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();
       
            String query = ("exec baja_adulto @member_no="+id);
            st.execute(query);
            
            st.close();
            con.close();
        }catch (SQLException e){
            mensaje= e.getMessage();
            return e.getMessage(); 
        }
        catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo deleteAdulto");
            throw new Exception("Excepcion encontrada: "+e.getMessage());
        }
        return mensaje;
    }
    public static String altaJoven(int idMember,String nombre,String ape,String inicial,int idAdult,String fecha) throws Exception {
        String mensaje="";
        try {
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();
          
            String query = ("exec alta_joven @member_no="+idMember+",@nombre='"+nombre+"',@apellido='"+ape+"',@inicial='"+inicial+"',@fecha_nac='"+fecha+"',@adult_member_no="+idAdult);
            st.execute(query);
            
                
            
            st.close();
            con.close();
        }catch (SQLException e){
            mensaje= e.getMessage();
            return e.getMessage();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo altaJoven");
            
        }
        return mensaje;
    }
    public static String altaAdulto(int idMember,String nombre,String ape,String inicial,String calle,int cp,String ciudad,String estado,String tel,String expiracion,String nacimiento) throws Exception {
        String mensaje="";
        try {
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();

            String query = ("exec alta_adulto @member_no="+idMember+",@nombre='"+nombre+"',@apellido='"+ape+"',@inicial='"+inicial+"',@calle='"+calle+"',@cp="+cp+",@ciudad='"+ciudad+"',@estado='"+estado+"',@telefono='"+tel+"',@fecha_exp='"+expiracion+"',@fecha_nac='"+nacimiento+"'");
            st.execute(query);
            
                
            
            st.close();
            con.close();
        }catch (SQLException e){
            mensaje= e.getMessage();
            return e.getMessage();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo altaAdulto");
            
        }
        return mensaje;
    }
    public static String altaPrestamo(int isbn,int copia,int titulo,int member,String fechaActual,String fechaEntrega) throws Exception {
        String mensaje="";
         Calendar fechaA = new GregorianCalendar();
        try {
            
            /*String fechaActual=fechaA.get(Calendar.YEAR)+"-"+(fechaA.get(Calendar.MONTH)+1)+"-";
            if(+fechaA.get(Calendar.DAY_OF_MONTH)<10){
                fechaActual+="0"+fechaA.get(Calendar.DAY_OF_MONTH);
            }else{
                fechaActual+=fechaA.get(Calendar.DAY_OF_MONTH);
            }*/
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();

            String query = ("exec alta_prestamo @isbn="+isbn+",@copy_no="+copia+",@title_no="+titulo+",@member="+member+",@out_date='"+fechaActual+"',@due_date='"+fechaEntrega+"'");
            st.execute(query);  
            
            st.close();
            con.close();
        }catch (SQLException e){
            mensaje= e.getMessage();
            return e.getMessage();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo altaPrestamo");
        }
        return mensaje;
    }
     public static String bajaPrestamo(int isbn,int copia) throws Exception {
        String mensaje="";
        try {
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://HectorCeja\\dbo:1433;databaseName=Library", "hector", "12345");
            Statement st = con.createStatement();

            String query = ("exec baja_prestamo @isbn="+isbn+",@copy_no="+copia);
            st.execute(query);  
            
            st.close();
            con.close();
        }catch (SQLException e){
            mensaje= e.getMessage();
            return e.getMessage();
        } catch (Exception e) {
            System.out.println("Ha ocurrido un error en la clase MemberModelo metodo bajaPrestamo");
        }
        return mensaje;
    }
}
