package services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RUserDao;
import entities.RUser;

/**
 * @author Nana Febriana
 */

@Service("rUserServices")
public class RUserServicesImpl implements RUserServices {

	private RUserDao ruser;

	@Autowired
	public void setrUser(RUserDao rUser) {
		this.ruser = rUser;
	}

	@Override
	public List<RUser> getUserList() {
		return ruser.getUserList();
	}

	@Override
	public RUser deleteUser(Integer userId) {
		return ruser.deleteUser(userId);
	}

	@Override
	public RUser createUser(RUser rUser) {
		return ruser.createUser(rUser);
	}

	@Override
	public RUser getUserById(int userId) {
		return ruser.getUserById(userId);
	}

	@Override
	public RUser updateUserObj(RUser rUser) {
		return ruser.updateUserObj(rUser);
	}

	@Override
	public List<RUser> getUserListByQuery(String sql) {
		return ruser.getUserListByQuery(sql);
	}
}
