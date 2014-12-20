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
@WebServlet("/Update1")
public class Update1 extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String pid=request.getParameter("upid");
		String dname=request.getParameter("udname");
		String des=request.getParameter("udes");
		String img=request.getParameter("uimg");
		 String price=request.getParameter("uprc");
		 int prc=Integer.parseInt(price);
		 String catid= request.getParameter("ucid");
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="update PRODUCT set DISPLAY_NAME='"+dname+"',DESCRIPTION='"+des+"',IMAGEURL='"+img+"',PRICE='"+prc+"',CAT_ID='"+catid+"' where PROD_ID='"+pid+"'";
			pst=con.prepareStatement(sql);
			int x=pst.executeUpdate();
			if(x>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcome3.jsp");
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
