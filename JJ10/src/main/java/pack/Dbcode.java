package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dbcode {
private static Connection con;
public Dbcode() throws ClassNotFoundException, SQLException
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection
			("jdbc:mysql://localhost/Employee","root","accord");
	System.out.println("Connected");
}
public void conClose() throws SQLException
{
	con.close();
	System.out.println("Connection Closed");
}
public int insert(String ename,String edep,float esal,String edoj) throws SQLException
{
	PreparedStatement ps=con.prepareStatement
			("insert into Emp(ename,edep,esal,edoj) values(?,?,?,?)");
	ps.setString(1, ename);
	ps.setString(2, edep);
	ps.setFloat(3, esal);
	ps.setString(4, edoj);
	return ps.executeUpdate();
}
public int update(String ename,String edep,float esal,int eid) throws SQLException
{
	PreparedStatement ps=con.prepareStatement
			("update Emp set ename=?,edep=?,esal=? where eid=?");
	ps.setString(1, ename);
	ps.setString(2, edep);
	ps.setFloat(3, esal);
	ps.setInt(4, eid);
	return ps.executeUpdate();
}
public int delete(int eid) throws SQLException
{
	PreparedStatement ps=con.prepareStatement
			("delete from Emp where eid=?");
	ps.setInt(1, eid);
	return ps.executeUpdate();
}
public ArrayList<Employee> view() throws SQLException
{
	ArrayList<Employee> a=new ArrayList<Employee>();
	PreparedStatement ps=con.prepareStatement("select * from Emp");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		Employee e=new Employee(rs.getInt(1), rs.getString(2),
				rs.getString(3),rs.getFloat(4),rs.getString(5));
		a.add(e);
	}
	return a;
}
public boolean login(String u,String p) throws SQLException
{
	PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=?");
	ps.setString(1, u);
	ps.setString(2, p);
	ResultSet rs=ps.executeQuery();
	return rs.next();
}
}
