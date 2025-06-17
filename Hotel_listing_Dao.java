package Airlines.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Airlines.entites.Hotel_Detail;

public class Hotel_listing_Dao {


	private SessionFactory factory;

	public Hotel_listing_Dao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	// save the flight details in database
		public boolean saveHotel(Hotel_Detail h_detail)
		{
			boolean f= false;

			try {
				Session session = this.factory.openSession();
				Transaction tx = session.beginTransaction();

				session.save(h_detail);

				tx.commit();
				session.close();
				f = true;
			}
			catch(Exception e)
			{
				System.out.println(e);
				f = false;
			}
			return f;
		}

		// fetching the flight details from databse

		public List<Hotel_Detail> getAllHotel_Detail()
		{
			Session s= this.factory.openSession();
			Query query = s.createQuery("from Hotel_Detail");
			List<Hotel_Detail> list = query.list();
			return list;
		}

		public List<Hotel_Detail> getSearchHotel_Detail(String destination,String check_in,String check_out)
		{
			Session ss=this.factory.openSession();
			Query query= ss.createQuery("from Hotel_Detail WHERE location=:d and check_in=:in and check_out=:out",Hotel_Detail.class);
			query.setParameter("d", destination);
			query.setParameter("in", check_in);
			query.setParameter("out", check_out);
			List<Hotel_Detail> list= query.getResultList();
			 System.out.println(list.isEmpty());
			return list;
		}

		// search hotel with their hotel_code
		public List<Hotel_Detail> getHotel_Data(String hotel_code)
		{
			List list =null;
			Session ss= this.factory.openSession();
			Query query =ss.createQuery("from Hotel_Detail WHERE hotel_code=:c",Hotel_Detail.class);
			query.setParameter("c",hotel_code);
			list =  query.getResultList();
			return list;
		}
}
