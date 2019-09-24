package sdlc;

import java.sql.*;

public class Datebase {

	public String Start(int num) {
		String url = "jdbc:mysql://localhost:3306/firstdatabase"; //数据库名
        String username = "root";  //数据库用户名
        String password = "8xujiajian!";  //数据库用户密码
		String talk="";
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
	          Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

	          if(conn != null){  
	              System.out.print("数据库连接成功！");  
	              System.out.print("<br />"); 
				
			  
			  
	              Statement stmt = null;  
	              ResultSet rs = null;  
	              String sql = "SELECT * FROM firsttable;";  //查询语句
	              stmt = conn.createStatement();  
	              rs = stmt.executeQuery(sql);  
	              //out.print("查询结果：");  
					System.out.print("<br/>");
	              while (rs.next()) {
				//System.out.println(rs.getString("text")) ;
	            	  String text=rs.getString("text");
	            	 talk=text;
	              }
	              rs.close();
	              stmt.close();
	              conn.close();
	          }else{  
	              System.out.print("连接失败！");  
	          }  
	      }catch (Exception e) {        
	          //e.printStackTrace();  
	          System.out.print("数据库连接异常！");
	      } 
		return talk;
	}
	
	public static void main(String[] args) {
		
		Datebase db=new Datebase();
		db.Start(1);
	}
}
