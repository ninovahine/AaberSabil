
package Beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Vector;

public class Dpersonne {


     String ident;
     String nom;
     String prenom;
     String age;
     String adresse;
     String ville;
     String pays;

    public Dpersonne(){}

    public String getIdent(){
        return ident;
    }
    public String getNom(){
        return nom;
    }
    public String getPrenom(){
        return prenom;
    }
    public String getAge(){
        return age;
    }
    public String getAdresse(){
        return adresse;
    }
    public String getVille(){
        return ville;
    }
    public String getPays(){
        return pays;
    }
    public void setIdent(String ident){
      this.ident=ident;
    }
    public void setNom(String nom){
        this.nom=nom;
    }
    public void setPrenom(String prenom){
        this.prenom=prenom;
    }
    public void setAge(String age){
        this.age=age;
    }
    public void setAdresse(String adresse){
        this.adresse=adresse;
    }
    public void setVille(String ville){
        this.ville=ville;
    }
    public void setPays(String pays){
        this.pays=pays;
    }

    public void ajouter(String id,String nom,String prenom,String age,String adresse,String ville,String pays) throws SQLException{
      
        Connection Cx=Connexion1.DonnerConnection();
        java.sql.Statement st=Cx.createStatement();
        PreparedStatement pst=Cx.prepareStatement("insert into tab_personne values(?,?,?,?,?,?,?) ");
        pst.setString(1, id);
        pst.setString(2, nom);
        pst.setString(3, prenom);
        pst.setString(4, age);
        pst.setString(5, adresse);
        pst.setString(6, ville);
        pst.setString(7, pays);

        int nbre=pst.executeUpdate();
    
    }
    public Vector rechercher(String id) throws SQLException{

        Vector v=new Vector();
        Connection Cx=Connexion1.DonnerConnection();
        java.sql.Statement st=Cx.createStatement();
        java.sql.ResultSet res=st.executeQuery("select * from tab_personne where ident='"+id+"' ");
        while(res.next()){
        Dpersonne p=new Dpersonne();
        p.setIdent(res.getString(1));
        p.setNom(res.getString(2));
        p.setPrenom(res.getString(3));
        p.setAge(res.getString(4));
        p.setAdresse(res.getString(5));
        p.setVille(res.getString(6));
        p.setPays(res.getString(7));
         v.addElement(p);
        }
        return v;

    }
    public void  modifier(String id,String nom,String prenom,String age,String adresse,String ville,String pays) throws SQLException{
     
        Connection Cx=Connexion1.DonnerConnection();
        java.sql.Statement st=Cx.createStatement();
        int nbre=st.executeUpdate("update tab_personne set nom='"+nom+"',prenom='"+prenom+"',age='"+age+"',adresse='"+adresse+"',ville='"+ville+"',pays='"+pays+"' where ident='"+id+"' ");
       
       

    }



}


    

