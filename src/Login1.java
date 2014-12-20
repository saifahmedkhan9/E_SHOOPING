import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JLabel;

import java.sql.*;
@WebServlet("/Login1")

public class Login1 extends HttpServlet
{
	private static final long serialVersionUID = 1L;
public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
 {
  res.setContentType("text/html");
  PrintWriter out = res.getWriter();
  String email=req.getParameter("umail");
  String pass=req.getParameter("upass");
  try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");

Statement s = c.createStatement();
String  s1="select * from INTERNAL_USER  where   EMAIL_ID='"+email+"'  and password='"+pass+"'";
//out.println(s1);
ResultSet rs=s.executeQuery(s1);

if(rs.next())
{
	HttpSession se=req.getSession();  
    se.setAttribute("umail",email);
	RequestDispatcher rd=req.getRequestDispatcher("admin.jsp");
	rd.forward(req, res);
	
}
else
{
	RequestDispatcher rd=req.getRequestDispatcher("error.jsp");
	rd.forward(req, res);

}
}catch(Exception e){System.out.println(e);}     

out.println("</body></html>");	
}
}