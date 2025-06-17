package Airlines.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Airlines.FactoryProvider;
import Airlines.Dao.Flight_Detail_Dao;
import Airlines.entites.Filghts_Detail;

@WebServlet("/Flight_Detail_Servlet")
public class Flight_Detail_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
            String code = request.getParameter("flight_code");
            String name = request.getParameter("flight_name");
			String source= request.getParameter("source");
			String destination = request.getParameter("destination");
			String price = request.getParameter("price");
			String departing = request.getParameter("departing");
			String returning = request.getParameter("returning");
			String cabin = request.getParameter("cabin");
			String takeoff = request.getParameter("takeoff");
			String arrival = request.getParameter("arrival");
			String way = request.getParameter("way");
			String discount1 = request.getParameter("discount");

			double price1 = Double.parseDouble(price);
			double discount = Double.parseDouble(discount1);
			
			Filghts_Detail fd = new Filghts_Detail(code,name,source,destination,price1,departing,returning,cabin,takeoff,arrival,way,discount);
			Flight_Detail_Dao dao = new Flight_Detail_Dao(FactoryProvider.getFactory());
			boolean b= false;
			b =dao.saveFlight(fd);

			 
			  response.sendRedirect("Admin.jsp");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

	}

}
