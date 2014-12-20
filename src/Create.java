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
import java.util.Random;
@WebServlet("/Create")
public class Create extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("udname");
		String desc=request.getParameter("udes");
		String img=request.getParameter("uimgurl");
		String product=" ";
		Random rand = new Random();
		if(img.toLowerCase().contains("reebok".toLowerCase()))
		{
			product="REEBOK"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/REEBOK/"+img;
		}
		else if(img.toLowerCase().contains("nike".toLowerCase()))
		{
			product="NIKE"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/nike/"+img;
		}
		else if(img.toLowerCase().contains("adidas".toLowerCase()))
		{
			product="ADIDAS"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/adidas/"+img;
		}
		else if(img.toLowerCase().contains("stacy".toLowerCase()))
		{
			product="STACY"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/STACY/"+img;
		}
		else if(img.toLowerCase().contains("converse".toLowerCase()))
		{
			product="CONVERSE"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/converse/"+img;
		}
		else if(img.toLowerCase().contains("puma".toLowerCase()))
		{
			product="PUMA"+Integer.toString(rand.nextInt(10000) + 100);
			img="images/puma/"+img;
		}
		else
		{
			img="c:/fakepath/"+img;
		}
		String price=request.getParameter("uprice");
		String categ=request.getParameter("ucat");
		String sku_id=Integer.toString(rand.nextInt(10000) + 100);
		String size=request.getParameter("usize");
		String inv=request.getParameter("uinventory");
		String pdp=request.getParameter("updp");
		if(pdp.toLowerCase().contains("reebok".toLowerCase()))
		{
			pdp="images/REEBOK/PDP/"+pdp;
		}
		else if(pdp.toLowerCase().contains("nike".toLowerCase()))
		{
			pdp="images/nike/PDP/"+pdp;
		}
		else if(pdp.toLowerCase().contains("adidas".toLowerCase()))
		{
			pdp="images/adidas/PDP/"+pdp;
		}
		else if(pdp.toLowerCase().contains("stacy".toLowerCase()))
		{
			pdp="images/STACY/PDP/"+pdp;
		}
		else if(pdp.toLowerCase().contains("converse".toLowerCase()))
		{
			pdp="images/converse/PDP/"+pdp;
		}
		else if(pdp.toLowerCase().contains("puma".toLowerCase()))
		{
			pdp="images/puma/PDP/"+pdp;
		}
		else
		{
			pdp="c:/fakepath/"+pdp;
		}
		try
		{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="insert into PRODUCT values(?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, product);
			pst.setString(2, name);
			pst.setString(3, desc);
			pst.setString(4, img);
			pst.setString(5, price);
			pst.setString(6, categ);
			pst.setString(7, pdp);
			int x=pst.executeUpdate();
			sql="insert into SKU values(?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, sku_id);
			pst.setString(2, product);
			pst.setString(3, size);
			pst.setString(4, inv);
			int y=pst.executeUpdate();
			if(x>0&&y>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcomea1.jsp");
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
