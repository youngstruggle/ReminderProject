package services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import auth.UserValidationAuth;
import entities.RUser;

/**
 * @author Nana Febriana
 */

@Service
public class UserValidationServicesImpl implements UserValidationServices {

	private UserValidationAuth userValidationAuth;

	@Autowired
	public void setUserValidationAuth(UserValidationAuth userValidationAuth) {
		this.userValidationAuth = userValidationAuth;
	}

	@Override
	public boolean userValidation(RUser rUser, BindingResult result) {
		return userValidationAuth.userValidation(rUser, result);
	}

}
