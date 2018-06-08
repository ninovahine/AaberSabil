package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class Etat_compteVoyageur {
 String emailV;
 int etat;
  
 public Etat_compteVoyageur() {
	// TODO Auto-generated constructor stub
}
public Etat_compteVoyageur(String emailV,int etat ) {
	super();
	this.emailV = emailV;
        this.etat = etat;
	 
}
public String getEmailV() {
	return emailV;
}
public void setEmailV(String emailV) {
	this.emailV = emailV;
}
 
public int getEtat() {
	return etat;
}
public void setEtat(int etat) {
	this.etat = etat;
}
public String bdEmailV;
public int bdEtat;
public void verifierReservation(String emailV,int etat) {
	String sql1="select * from voyageur where email = ? and etat_compte= ? ";
	try {
		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(sql1);
		
		ps.setString(1,emailV);
		ps.setInt(2, etat);
		
		ResultSet res2 = ps.executeQuery();
            while(res2.next()) {
			bdEmailV=res2.getString("email");
			bdEtat=res2.getInt("etat_compte");
			
		}
		
	System.out.println("bien bien  ;)");
} catch (Exception e) {
	
System.out.println("mahouch ga3ed yverifii" +e.getMessage());
}
}




 public void Activer(String emailV) {
	 //String sql = "insert into reservation(emailV,emailH,joursTravail,nbrP)values(?,?,?,?)";
         String sql1="UPDATE voyageur SET  etat_compte='1' WHERE email=?";
        
	 try {
			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sql1);
			ps.setString(1,emailV);
			//ps.setString(2,emailH);
			//ps.setString(3,joursTravail);
			//ps.setString(4,nbrP);
			
			ps.executeUpdate();
			System.out.println("bien ga3ed yinsiri ;)");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 }
 public void Desactiver(String emailV) {
	 //String sql = "insert into reservation(emailV,emailH,joursTravail,nbrP)values(?,?,?,?)";
        
         String sql2="UPDATE voyageur SET  etat_compte='0' WHERE email=?";
	 try {
			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sql2);
			ps.setString(1,emailV);
			//ps.setString(2,emailH);
			//ps.setString(3,joursTravail);
			//ps.setString(4,nbrP);
			
			ps.executeUpdate();
			System.out.println("bien ga3ed yinsiri ;)");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 }}
