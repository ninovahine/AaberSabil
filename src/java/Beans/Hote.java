package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Hote {
String nom;
String prenom;
String email;
String password;
String telephone;
String day;
String month;
String year;
String sexe;
String willaya;
String joursTravail;
String jour2;
String nbrP;
int etat_compte=1;
public String getJour2() {
	return jour2;
}
public void setJour2(String jour2) {
	this.jour2 = jour2;
}
public int getEtat_compte() {
	return etat_compte;
}
public void setEtat_compte(int etat_compte) {
	this.etat_compte = etat_compte;
}
public String getWillaya() {
	return willaya;
}
public void setWillaya(String willaya) {
	this.willaya = willaya;
}
public String getNbrP() {
	return nbrP;
}
public void setNbrP(String nbrP) {
	this.nbrP = nbrP;
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
public String getEmail() {
	return email;
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
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getDay() {
	return day;
}
public void setDay(String day) {
	this.day = day;
}

public String getMonth() {
	return month;
}

public void setMonth(String month) {
	this.month = month;
}

public String getYear() {
	return year;
}

public void setYear(String year) {
	this.year = year;
}

public String getSexe() {
	return sexe;
}

public void setSexe(String sexe) {
	this.sexe = sexe;
}

public String getJoursTravail() {
	return joursTravail;
}
/* public String getemejour() {
	return emejour;
}
public void setemejour(String emejour) {
	this.emejour = emejour;
}*/

public void setJoursTravail(String joursTravail) {
	this.joursTravail = joursTravail;
}

public Hote(String willaya ,String joursTravail,String jour2,String nbrP) {
	
	this.willaya = willaya;
        this.joursTravail = joursTravail;
        this.nbrP = nbrP;
        this.jour2 = jour2;
}
public Hote() {
	super();
}

//public Hote(String nom, String prenom, String email, String password, String telephone, String day, String month,
//		String year, String sexe, String joursTravail,String emejour,String willaya,String nbrP) {
public Hote(String nom, String prenom, String email, String password, String telephone, String day, String month,
		String year, String sexe, String joursTravail,String willaya,String nbrP,String jour2,int etat_compte) {
	
	this.nom = nom;
	this.prenom = prenom;
	this.email = email;
	this.password = password;
	this.telephone = telephone;
	this.day = day;
	this.month = month;
	this.year = year;
	this.sexe = sexe;
	this.joursTravail = joursTravail;
        this.etat_compte = etat_compte;
        this.jour2 = jour2;
}

public void InscrireHote(String nom,String prenom,String email,String password,String telephone,String day,String month,String year,String sexe,String joursTravail,String willaya ,String nbrP,String jour2,int etat_compte) {
	String sql1="INSERT INTO hote (nom,prenom ,email,password,telephone,day,month,year,sexe,joursTravail,willaya,nbrP,jour2,etat_compte)Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	try {
		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps;
		ps = con.prepareStatement(sql1);
		ps.setString(1, nom);
		ps.setString(2, prenom);
		ps.setString(3, email);
		ps.setString(4, password);
		ps.setString(5, telephone);
		ps.setString(6, day);
		ps.setString(7, month);
		ps.setString(8, year);
		ps.setString(9, sexe);
		ps.setString(10, joursTravail);
		ps.setString(11, willaya);
		ps.setString(12, nbrP);
                ps.setString(13, jour2);
                ps.setInt(14, etat_compte);
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
private String emailH;
private String pswH;


public String getEmailH() {
	return emailH;
}

public void setEmailH(String emailH) {
	this.emailH = emailH;
}

public String getPswH() {
	return pswH;
}

public void setPswH(String pswH) {
	this.pswH = pswH;
}

// constructeur te3 humain
/*
public Hote(String email, String psw,int etat_compte) {
	super();
	this.emailH = email;
	this.pswH = psw;
        this.etat_c=etat_compte;
}*/
public Hote(String email, String psw) {
	super();
	this.emailH = email;
	this.pswH = psw;
        //this.etat_c=etat_compte;
}
public Hote(String email, int psw) {
	super();
	this.emailH = email;
	//this.pswH = psw;
        this.etat_compte=etat_compte;
}

public String bdprenom=null;
public String bdemail = null;
public String bdpsw = null;
public String bdwil = null;
public String bddateA = null;
public int etat_c;
public String bdnbrp = null;
public void login(String email, String psw) {

	try {
		String sql2 = "Select * from hote where email = ? and password= ?";

		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(sql2);

		ps.setString(1, email);
		ps.setString(2, psw);

		ResultSet res = ps.executeQuery();

		while (res.next()) {
			bdemail = res.getString("email");
			bdpsw = res.getString("password");
                        etat_c=res.getInt("etat_compte");
		}

		System.out.println("ga3ed yconectili bien ;)");
	} catch (Exception e) {
		System.out.println(" mahouch ga3edyconectili blem f login" + e.getMessage());

	}
}
public void rechercherHote(String willaya,String joursTravail,String jour2, String nbrP)  {
	try {
	String sql3="select * from hote where willaya= ? and joursTravail=? and nbrP=?";
	//String sql3="select * from hote where willaya= ? and joursTravail=? and emejour=? and nbrP=?";
	Class.forName("org.postgresql.Driver"); 
	Connection con;
	con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
	PreparedStatement ps = con.prepareStatement(sql3);
	ps.setString(1, willaya);
        ps.setString(2, joursTravail);
	
	
	
	ResultSet res1 = ps.executeQuery();
	
	while(res1.next()) {
		bdwil=res1.getString("willaya");
                bddateA=res1.getString("joursTravail");
               etat_c= res1.getInt("etat_compte");
               // bdemejour =res1.getString("emejour");
	}

	System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
}

public Hote(String prenom) {
	
	
	this.prenom = prenom;
}
public void rechercherHoteN(String prenom)  {
	try {
	String sql4="select * from hote where prenom= ? ";
	
	Class.forName("org.postgresql.Driver"); 
	Connection con;
	con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
	PreparedStatement ps = con.prepareStatement(sql4);
	ps.setString(1, prenom);
	
	
	ResultSet res2 = ps.executeQuery();
	
	while(res2.next()) {
		bdprenom=res2.getString("prenom");
	}

	System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
}

		
		
	
}

