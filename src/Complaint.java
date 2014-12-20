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
import java.util.*;
@WebServlet("/Complaint")
public class Complaint extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("umail");
		Random rand = new Random();
		String com_id=Integer.toString(rand.nextInt(10000) + 100);
		String message=request.getParameter("umess");
		String status="Pending";
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="insert into COMPLAINT values(?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, com_id);
			pst.setString(3, message);
			pst.setString(4, status);
			int x=pst.executeUpdate();
			if(x>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcome2.jsp");
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
