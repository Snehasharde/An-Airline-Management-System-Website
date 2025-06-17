package Airlines.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Airlines.FactoryProvider;
import Airlines.Dao.car_Detail_Dao;
import Airlines.entites.car_Detail;
 
@WebServlet("/car_Detail_Servlet")
public class car_Detail_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		    try {
		    	String name = request.getParameter("name");
		    	String price = request.getParameter("price");
		    	String number = request.getParameter("number");
		    	String start = request.getParameter("start_date");
		    	String end = request.getParameter("end_date");
		    	String source = request.getParameter("source");
		    	String destination = request.getParameter("destination");
		    	String location = request.getParameter("location");
		    	
		    	double price1 = Double.parseDouble(price);
		    	
		    	car_Detail cd = new car_Detail(name,price1,number,source,destination,start,end,location,null);
		    	car_Detail_Dao dao = new car_Detail_Dao(FactoryProvider.getFactory());
		    	boolean b =dao.saveCar(cd);
		    	
		    	response.sendRedirect("car-listing.jsp");
		    }
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    }
	}

}
