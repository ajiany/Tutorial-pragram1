package sdlc;

import java.sql.*;

public class Datebase {

	public String Start(int num) {
		String url = "jdbc:mysql://localhost:3306/firstdatabase"; //���ݿ���
        String username = "root";  //���ݿ��û���
        String password = "8xujiajian!";  //���ݿ��û�����
		String talk="";
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  ////����������
	          Connection conn = DriverManager.getConnection(url, username, password);  //����״̬

	          if(conn != null){  
	              System.out.print("���ݿ����ӳɹ���");  
	              System.out.print("<br />"); 
				
			  
			  
	              Statement stmt = null;  
	              ResultSet rs = null;  
	              String sql = "SELECT * FROM firsttable;";  //��ѯ���
	              stmt = conn.createStatement();  
	              rs = stmt.executeQuery(sql);  
	              //out.print("��ѯ�����");  
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
	              System.out.print("����ʧ�ܣ�");  
	          }  
	      }catch (Exception e) {        
	          //e.printStackTrace();  
	          System.out.print("���ݿ������쳣��");
	      } 
		return talk;
	}
	
	public static void main(String[] args) {
		
		Datebase db=new Datebase();
		db.Start(1);
	}
}
