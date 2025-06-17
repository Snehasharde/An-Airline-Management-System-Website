package Airlines.Dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import Airlines.entites.Filghts_Detail;
import Airlines.entites.User;

public class UserDao {

	private SessionFactory factory;

	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	//get user by email and password
	public User getUserByEmailAndPassword(String email,String password)
	{
		User user=null;

		try {

			String query ="from User where email=: e and password=: p";
			Session session = this.factory.openSession();

			Query q= session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);

			user =(User)q.uniqueResult();
			session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return user;
	}
	
	// get the users
	
	public List<User> getUser()
	{
		Session s= this.factory.openSession();
		Query query = s.createQuery("from Filghts_Detail");
		List<User> list = query.list();
		return list;
	}

}
