package Airlines.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Airlines.FactoryProvider;
import Airlines.Dao.Hotel_listing_Dao;
import Airlines.entites.Hotel_Detail;


@WebServlet("/Hotel_Detail_Servlet")
public class Hotel_Detail_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		try {
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String location = request.getParameter("location");
			String checkin = request.getParameter("checkin");
			String checkout = request.getParameter("checkout");
			String code = request.getParameter("code");
			String image = request.getParameter("image");
			
			double price1 = Double.parseDouble(price);
			
			Hotel_Detail hd = new Hotel_Detail(name,price1,location,checkin,checkout,code);
			Hotel_listing_Dao dao = new Hotel_listing_Dao(FactoryProvider.getFactory());
			boolean b = dao.saveHotel(hd);
			
			response.sendRedirect("hotel-listing.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
