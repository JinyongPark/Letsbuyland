package land.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import land.dto.ProductDTO;
import land.util.DBUtil;

public class productDAO {
	
	Connection con = null;
	Statement stat = null;
	
	public productDAO() {		
		
		try {
			con = DBUtil.getConnection();
			stat = con.createStatement();			
		} catch (SQLException e) {
			System.out.println(e.toString());			
		}
	}
	public ArrayList<ProductDTO> Productlist () {		
		
		ArrayList<ProductDTO> Plist = new ArrayList<ProductDTO>();
		
		try {
			
			String sql = "";
			ResultSet result = stat.executeQuery(sql);
			
			while(result.next()) {
				ProductDTO dto = new ProductDTO();
				
				dto.setKind(result.getString("kind"));
				dto.setDeposit(result.getInt("deposit"));
				dto.setRent(result.getInt("rent"));
				
				Plist.add(dto);
			}			
			
			stat.close();
			con.close();
			
		} catch (SQLException e) {
			System.out.println(e.toString());
			System.out.println("SQL sentence structure error");
		}
			
		return Plist;		
	}
}
