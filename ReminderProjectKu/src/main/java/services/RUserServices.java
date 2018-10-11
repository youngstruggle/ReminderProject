package services;

import java.util.List;

import entities.RUser;

/**
 * @author Nana Febriana
 */

public interface RUserServices {

	public List<RUser> getUserList();
	public RUser deleteUser(Integer userId);
	public RUser createUser(RUser rUser);
	public RUser getUserById(int userId);
	public RUser updateUserObj(RUser rUser);
	public List<RUser> getUserListByQuery(String sql);

}