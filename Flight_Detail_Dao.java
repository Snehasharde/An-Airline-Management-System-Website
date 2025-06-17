package Airlines.Dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Airlines.entites.Filghts_Detail;
import Airlines.jdbc.jdbc;

public class Flight_Detail_Dao {


	private SessionFactory factory;

	public Flight_Detail_Dao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	
	public Flight_Detail_Dao() {
		super();
	}


	// save the flight details in database
	public boolean saveFlight(Filghts_Detail f_detail)
	{
		boolean f= false;

		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();

			session.save(f_detail);

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

	public List<Filghts_Detail> getAllFlight_Detail()
	{
		Session s= this.factory.openSession();
		Query query = s.createQuery("from Filghts_Detail");
		List<Filghts_Detail> list = query.list();
		return list;
	}

	//search the flihgt
	public List<Filghts_Detail> getSearchFlight_Detail(String source,String destination,String departing,String returning)
	{
		Session ss=this.factory.openSession();
		Query query= ss.createQuery("from Filghts_Detail WHERE source=:s and destination=:d and departing=:depart and returning=:r",Filghts_Detail.class);
		query.setParameter("s", source);
		query.setParameter("d", destination);
		query.setParameter("depart", departing);
		query.setParameter("r", returning);
		List<Filghts_Detail> list= query.getResultList();
		 System.out.println(list.isEmpty());
		return list;
	}
	// check the flight status
	public List<Filghts_Detail> getCheckFlight_status(String source,String destination,String departing)
	{
		Session ss=this.factory.openSession();
		Query query= ss.createQuery("from Filghts_Detail WHERE source=:s and destination=:d and departing=:depart",Filghts_Detail.class);
		query.setParameter("s", source);
		query.setParameter("d", destination);
		query.setParameter("depart", departing);
		List<Filghts_Detail> list= query.getResultList();
		 System.out.println(list.isEmpty());
		return list;
	}

	// search flight for thier flight_code
	public List<Filghts_Detail> getFlight_Data(String flight_code)
	{
		List list =null;
		Session ss= this.factory.openSession();
		Query query =ss.createQuery("from Filghts_Detail WHERE flight_code=:c",Filghts_Detail.class);
		query.setParameter("c", flight_code);
		list =  query.getResultList();
		return list;
	}
	
	 
	
	// Update discount price the flight form database
		public int updateDiscount(String code,String price)
		{
			int x=0;
			Session ss = this.factory.openSession();
			Query q = ss.createQuery("UPDATE Filghts_Detail SET discount = p WHERE flight_code =:c",Filghts_Detail.class);
			q.setParameter("c", code);
			q.setParameter("p", price);
			q.executeUpdate();
			ss.getTransaction().commit();
			return x;
		}
}
