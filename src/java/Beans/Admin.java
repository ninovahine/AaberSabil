package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Admin {
	String nom;
	String prenom;
	String email;
	String password;
	String image;
	public String getEmail() {
		return email;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Admin(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	public static String bdemail;
	public static String bdpsw;
	public void loginAdmin(String email,String password) {
		try {
			String sql = "Select * from admin where email = ? and password= ?";

			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet res = ps.executeQuery();

			while (res.next()) {
				bdemail = res.getString("email");
				bdpsw = res.getString("password");
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public Admin recupererAdmin(String email) {
		try {
			String sqlA = "Select * from admin where email = '"+email+"'";

			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sqlA);

			ResultSet res = ps.executeQuery();
			Admin d = new Admin();
			if(res.next()) {
				d.setNom(res.getString("nom"));
				d.setPrenom(res.getString("prenom"));
				d.setImage(res.getString("image"));
				 return d;
				
			}
			System.out.println("aw yreccuoeriii");

	}catch(Exception e) {
		System.out.println(" mahouch yrecuperrriiii " + e.getMessage());
	}
		return null;

}}
