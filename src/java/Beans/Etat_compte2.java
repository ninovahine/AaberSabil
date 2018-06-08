
package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Etat_compte2 {
    public ArrayList<Hote> getall() throws SQLException{
        Connection DbConnect;
		DbConnect = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
                ArrayList<Hote> list = new ArrayList<Hote>();
      try {  Class.forName("org.postgresql.Driver"); 
		
		//PreparedStatement ps = con.prepareStatement(sql1);
		Hote Hote1 ;
		String sql ="  SELECT * FROM  hote";
		PreparedStatement ps = DbConnect.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Hote1=new Hote();
                                //Hote.setNameusr(rs.getString("nom_usr"));
				//Hote.setTel(rs.getString("tel"));
				Hote1.setEmail(rs.getString("email"));
				//Hote.setDate_naissance(rs.getString("date_naiss"));
				//Hote.setDescription(rs.getString("description_usr"));
				//Hote.setLanguages(rs.getString("langues"));
				//Hote.setId_Hote(rs.getInt("Hote_id"));
				list.add(Hote1);

			}
		} catch (Exception e) {
			e.printStackTrace();
			DbConnect.rollback();
			return list;
		}finally {
			DbConnect.close();
		}
		return list;
                
                
	}

    
    
    
    
}
