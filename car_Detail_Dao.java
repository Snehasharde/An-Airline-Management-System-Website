package Airlines.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import Airlines.entites.car_Detail;

public class car_Detail_Dao {

	private SessionFactory factory;

	public car_Detail_Dao(SessionFactory factory) {

		this.factory = factory;
	}

	// save the flight details in database
		public boolean saveCar(car_Detail c_detail)
		{
			boolean f= false;

			try {
				Session session = this.factory.openSession();
				Transaction tx = session.beginTransaction();

				session.save(c_detail);

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

	// fetching the car details from databse

		public List<car_Detail> getAllcar_Detail()
		{

			Session s= this.factory.openSession();
			Query query = s.createQuery("from car_Detail");
			List<car_Detail> list = query.list();
			return list;
		}

		// fetching the car details from databse for search

			public List<car_Detail> getSearchcar_Detail(String pick_up,String drop_off,String strat_date,String return_date)
			{

				Session s= this.factory.openSession();
				Query query = s.createQuery("from car_Detail WHERE pick_up_location=:p and drop_off_location=:d and Start_date=:s and return_date=:r",car_Detail.class);
				query.setParameter("p", pick_up);
				query.setParameter("d", drop_off);
				query.setParameter("s", strat_date);
				query.setParameter("r", return_date);
				List<car_Detail> list = query.list();
				return list;
			}
}
