package dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import util.HibernateUtil;
import entities.RUser;

/**
 * @author Nana Febriana
 */

@Repository
public class RUserDaoImpl implements RUserDao {

	@Override
	public List<RUser> getUserList() {
		List<RUser> userList = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			userList = session.createCriteria(RUser.class).list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

	@Override
	public RUser deleteUser(Integer userId) {
		RUser rUser = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			 rUser = (RUser) session.get(RUser.class, userId);
			if (rUser != null) {
				session.delete(rUser);
				session.getTransaction().commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rUser;
	}

	@Override
	public RUser createUser(RUser rUser) {
		try {
			if (rUser != null) {
				Session session = HibernateUtil.getSessionFactory().getCurrentSession();
				session.beginTransaction();
				session.save(rUser);
				session.getTransaction().commit();
			} else {
				System.out.println("Ada yang null!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rUser;
	}

	@Override
	public RUser getUserById(int userId) {
		RUser user = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			user = (RUser) session.get(RUser.class, userId);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public RUser updateUserObj(RUser rUser) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			if (rUser != null) {
				session.update(rUser);
				session.getTransaction().commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rUser;
	}

	@Override
	public List<RUser> getUserListByQuery(String sql) {
		List<RUser> userList = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			userList = session.createQuery(sql).list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}

}
