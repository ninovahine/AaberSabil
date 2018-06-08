package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class reservation {
 String emailH;
 String emailV;
 String dateArrivee;
 String dateDepart;
 String nbrP;
 public reservation() {
	// TODO Auto-generated constructor stub
}
public reservation(String emailH, String emailV, String dateArrivee,String dateDepart, String nbrP) {
	super();
	this.emailH = emailH;
	this.emailV = emailV;	
	this.dateArrivee = dateArrivee;
	this.dateDepart = dateDepart;
	this.nbrP = nbrP;
}
public String getEmailH() {
	return emailH;
}
public void setEmailH(String emailH) {
	this.emailH = emailH;
}
public String getEmailV() {
	return emailV;
}
public void setEmailV(String emailV) {
	this.emailV = emailV;
}

public String getDateArrivee() {
	return dateArrivee;
}
public void setDateArrivee(String dateArrivee) {
	this.dateArrivee = dateArrivee;
}
public String getDateDepart() {
	return dateDepart;
}
public void setDateDepart(String dateDepart) {
	this.dateDepart = dateDepart;
}
public String getNbrP() {
	return nbrP;
}
public void setNbrP(String nbrP) {
	this.nbrP = nbrP;
}
public String bdEmailV;
public String bdEmailH;
public void verifierReservation(String emailV,String emailH) {
     System.out.println("rani fel beans reservation.java verifierReservation() ");
	String sql1="select * from reservation where emailV = ? and emailH= ? ";
	try {
		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(sql1);
		
		ps.setString(1,emailV);
		ps.setString(2, emailH);
		
		ResultSet res2 = ps.executeQuery();
		while(res2.next()) {
			bdEmailV=res2.getString("emailV");
			bdEmailH=res2.getString("emailH");
			
		}
		
	System.out.println("bien bien  ;)");
} catch (Exception e) {
	
System.out.println("mahouch ga3ed yverifii" +e.getMessage());
}
}




 public void AjouterReservation(String emailV,String emailH,String dateArrivee,String dateDepart,String nbrP) {
     System.out.println("rani fel beans reservation.java ajouter reservation() ");
	 String sql = "insert into reservation(\"emailV\",\"emailH\",\"dateA\",\"dateD\",\"nbrP\")values(?,?,?,?,?)";
	 try {
			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,emailV);
			ps.setString(2,emailH);
			ps.setString(3,dateArrivee);
			ps.setString(4, dateDepart);
			ps.setString(5,nbrP);
                         
			
			ps.executeUpdate();
			System.out.println("bien ga3ed yinsiri ;)");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
                        System.out.println("mahouch ga3ed yinsiri ;)");
			e.printStackTrace();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
                         System.out.println("mahouch ga3ed yinsiri ;)");
		}
 }
 

}
