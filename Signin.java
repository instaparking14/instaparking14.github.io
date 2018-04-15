import java.sql.*;
class Signin{
    
    public static void main(String args[]) throws Exception{
        Connection con=null;
        Statement stm=null;
        ResultSet rs=null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/c9","sripriya94","");
            stm=con.createStatement();
            rs=stm.executeQuery("select * from user");  
            while(rs.next())  
            System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+" "+rs.getString(4));  
            con.close();  
}
catch(Exception e){ System.out.println(e);}  
}  
}  
