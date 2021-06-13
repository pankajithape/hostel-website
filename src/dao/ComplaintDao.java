package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import dto.Complaint;
import dto.Hostel;

@Repository
public class ComplaintDao {

	@Autowired
	private HibernateTemplate hibernateTemp;

	public ComplaintDao() {
		super();
	}

	public HibernateTemplate getHibernateTemp() {
		return hibernateTemp;
	}

	public void setHibernateTemp(HibernateTemplate hibernateTemp) {
		this.hibernateTemp = hibernateTemp;
	}
	
	
public void createComplaint(Complaint complaint1) {
		
		hibernateTemp.execute(new HibernateCallback<List<Complaint>>() {

			@Override
			public List<Complaint> doInHibernate(Session session) throws HibernateException {
				// TODO Auto-generated method stub
				
				Transaction t=session.beginTransaction();
				session.save(complaint1);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

public List<Complaint> userComplaints()
{
List<Complaint>l=hibernateTemp.execute(new HibernateCallback<List<Complaint>>() {

	@Override
	public List<Complaint> doInHibernate(Session session) throws HibernateException {
		
		Transaction t=session.beginTransaction();
		Query q=session.createQuery("from Complaint");
		List<Complaint>list=q.list();
		t.commit();
		session.flush();
		session.close();
		return list;
	}
});
return l;
}
}
