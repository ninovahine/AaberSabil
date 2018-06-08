package Beans;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Humain {

	String nom;
	String prenom;
	 public   String email;
	String motdepasse;
	String day;
	String month;
	String year;
	String sexe;
	String Telephone;
       public    int etat_compte=1;
        public Humain(String email,int etat_compte){
              this.etat_compte = etat_compte;
              this.email = email;
        }
public Humain(){
    
}
public int getEtat_compte() {
	return etat_compte;
}
public void setEtat_compte(int etat_compte) {
	this.etat_compte = etat_compte;
}
	public String getTelephone() {
		return Telephone;
	}

	public void setTelephone(String telephone) {
		Telephone = telephone;
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

	public String getMotdepasse() {
		return motdepasse;
	}

	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
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

	public Humain(String nom, String prenom, String email, String motdepasse,String telephone, String day,String month,String year, String sexe,int etat_compte)
			 {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motdepasse = motdepasse;
		this.day = day;
		this.month = month;
		this.year = year;
		this.sexe = sexe;
		this.Telephone = telephone;
                this.etat_compte = etat_compte;
	}

	public void InscrireVoyageur(String nom, String prenom, String email, String motdepass, String telephone ,String day,String month,String year,
			String sexe,int etat_compte) {
		String sql = "INSERT INTO voyageur (nom,prenom ,email,password,telephone,day,month,year,sexe,etat_compte ) VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
			PreparedStatement ps;
			ps = con.prepareStatement(sql);
			ps.setString(1, nom);
			ps.setString(2, prenom);
			ps.setString(3, email);
			ps.setString(4, motdepass);
			ps.setString(5, telephone);
			ps.setString(6, day);
			ps.setString(7, month);
			ps.setString(8, year);
			ps.setString(9, sexe);
                        ps.setInt(10, etat_compte);

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
	
public static void modifierPro(String nom,String email,String motdepasse,String telephone) {
	try {
		String query = "UPDATE voyageur SET nom='"+nom+"',password ='"+motdepasse+"',telephone ='"+telephone+"'WHERE email ='"+email+"'";

		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(query);

		ps.setString(1,nom );
		ps.setString(2,motdepasse );
		ps.setString(3,telephone );

		  ps.executeUpdate(query);

		

		System.out.println("ga3ed ymodifi bien ;)");
	} catch (Exception e) {
		System.out.println(" mahouch ga3ed ymodifi" + e.getMessage());

	}
	
	
	}
	
	
	
	
	
	private String emailH;
	private String pswH;

	// getersw setters te3 humain
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

	public Humain(String email, String psw) {
		super();
		this.emailH = email;
		this.pswH = psw;
	}

	// les methodes te3 humain
	public String bdemail = null;
	public String bdpsw = null;
        public int etat_c;
	public void login(String email, String psw) {

		try {
			String sql = "Select * from Voyageur where email = ? and password= ?";

			Class.forName("org.postgresql.Driver"); 
			Connection con;
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
			PreparedStatement ps = con.prepareStatement(sql);

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

//public void ajouter(String nom,String prenom,String sexe) throws SQLException{
      /*Connection Cx=Connexion1.DonnerConnection();
        java.sql.Statement st=Cx.createStatement();
        PreparedStatement pst=Cx.prepareStatement("insert into voyageur values(?,?,?,?,?,?,?,?,?) ");
        
        pst.setString(2, nom);
        pst.setString(3, prenom);
        pst.setString(4, sexe);
        

        int nbre=pst.executeUpdate();
    
    */
public Humain recupererVoyageur(String email) {
	try {
		String sql = "Select * from Voyageur where email ='"+email+"'";

		Class.forName("com.mysql.jdbc.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aabersabiil", "root", "admin");
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet res = ps.executeQuery();
		Humain hu = new Humain(); 
		if(res.next()) {
			hu.setNom(res.getString("nom"));
			hu.setPrenom(res.getString("prenom"));
			hu.setEmail(res.getString("email"));
			hu.setMotdepasse(res.getString("password"));
			hu.setTelephone(res.getString("telephone"));
			return hu;
		}
	} catch (Exception e) {
		System.out.println(" mahouch ga3edyconectili blem f login" + e.getMessage());

	}
	return null;
}
}

	
	


