import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
@WebServlet("/Register")
public class Register extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("umail");
		String pass=request.getParameter("upass");
		String fname=request.getParameter("ufname");
		String lname=request.getParameter("ulname");
		String address=request.getParameter("uaddress");
		// String country=request.getParameter("ucountry");
		 String city=request.getParameter("ucity");
		 String date= request.getParameter("udate");
	//	 String pnumber=request.getParameter("unumber");
		 String pnumber=request.getParameter("unumber");	
		 try
		{
			//int age=Integer.parseInt(request.getParameter("uage"));
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="insert into EXTERNAL_USER values(?,?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, pass);
			pst.setString(3, fname);
			pst.setString(4, lname);
			pst.setString(5, address);
		//	pst.setString(6, country);
			pst.setString(6, city);
			pst.setString(7, date);
			pst.setString(8,pnumber);
			//pst.setInt(6, age);
			int x=pst.executeUpdate();
			if(x>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
			
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
			
		}
	}

}
