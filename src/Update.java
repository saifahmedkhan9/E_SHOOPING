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
@WebServlet("/Update")
public class Update extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("umail");
		String fname=request.getParameter("ufname");
		String lname=request.getParameter("ulname");
		String address=request.getParameter("uaddress");
		 String city=request.getParameter("ucity");
		 String date= request.getParameter("udate");
		try
		{
			
			int pnumber=Integer.parseInt(request.getParameter("unumber"));	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="update EXTERNAL_USER set FIRST_NAME='"+fname+"',LAST_NAME='"+lname+"',ADDRESS='"+address+"',CITY='"+city+"',DATE_OF_BIRTH='"+date+"',PHONE_NUMBER='"+pnumber+"' where EMAIL_ID='"+email+"'";
			pst=con.prepareStatement(sql);
			int x=pst.executeUpdate();
			if(x>0)
			{
				response.sendRedirect("index.jsp");
				System.out.println("queryok");
			
			}
			else
			{
				response.sendRedirect("error.jsp");
				System.out.println("cannot update table from query");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			response.sendRedirect("error.jsp");
			
			
		}
	}

}
