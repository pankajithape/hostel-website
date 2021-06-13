package dao;

import java.util.List;

//import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import dto.Hostel;
@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemp;

	public UserDao() {
		super();
	}

	public HibernateTemplate getHibernateTemp() {
		return hibernateTemp;
	}

	public void setHibernateTemp(HibernateTemplate hibernateTemp) {
		this.hibernateTemp = hibernateTemp;
	}
	
	
		
	
	public void createUser(Hostel hostel) {
		
		hibernateTemp.execute(new HibernateCallback<List<Hostel>>() {

			@Override
			public List<Hostel> doInHibernate(Session session) throws HibernateException {
				// TODO Auto-generated method stub
				
				Transaction t=session.beginTransaction();
				session.save(hostel);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public List<Hostel> login(Hostel hostel)
	{
		
		List<Hostel> l=hibernateTemp.execute(new HibernateCallback<List<Hostel>>() {

			@Override
			public List<Hostel> doInHibernate(Session session) throws HibernateException {
				
				Transaction t=session.beginTransaction();
				Query q=session.createQuery("from Hostel where emailId=? and password=?");
				q.setString(0,hostel.getEmailId());
				q.setString(1,hostel.getPassword());
				
				List<Hostel>list=q.list();
				t.commit();
				session.flush();
				session.close();
				return list;
			}
		});
		return l;
	}
	
	public Hostel getHostel(Hostel hostel)
	{
		
		Hostel l=hibernateTemp.execute(new HibernateCallback<Hostel>() {

			@Override
			public Hostel doInHibernate(Session session) throws HibernateException {
				Hostel hostels=null;
				Transaction t=session.beginTransaction();
				Query q=session.createQuery("from Hostel where emailId=?");
				q.setString(0,hostel.getEmailId());
								
				List<Hostel> list=q.list();
				if(!list.isEmpty())
				{
					hostels = list.get(0);
				}
				t.commit();
				session.flush();
				session.close();
				return hostels;
			}
		});
		return l;
	}
	
	
	
	public Hostel selectUser(String emailId)
	{
		Hostel u=hibernateTemp.execute(new HibernateCallback<Hostel>() {

			@Override
			public Hostel doInHibernate(Session session) throws HibernateException {
			Transaction t=session.beginTransaction();
			Hostel hostel=(Hostel)session.get(Hostel.class, emailId);
			t.commit();
			session.flush();
			session.close();
				return hostel;
			}
		});
		return u;
	}
	
	
	
	public void updateUser(Hostel hostel)
	{
		
		hibernateTemp.execute(new HibernateCallback<List<Hostel>>() {

			@Override
			public List<Hostel> doInHibernate(Session session) throws HibernateException {
				Transaction t=session.beginTransaction();
				session.update(hostel);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public List<Hostel> selectUsers()
	{
	List<Hostel>l=hibernateTemp.execute(new HibernateCallback<List<Hostel>>() {

		@Override
		public List<Hostel> doInHibernate(Session session) throws HibernateException {
			
			Transaction t=session.beginTransaction();
			Query q=session.createQuery("from Hostel");
			List<Hostel>list=q.list();
			t.commit();
			session.flush();
			session.close();
			return list;
		}
	});
	return l;
	}
	}

	
	
	
	

