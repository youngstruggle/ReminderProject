package auth;

import org.springframework.stereotype.Repository;
import org.springframework.validation.BindingResult;

import entities.RUser;

/**
 * @author Nana Febriana
 */

@Repository
public class UserValidationAuthImpl implements UserValidationAuth {
	
	@Override
	public boolean userValidation(RUser rUser, BindingResult result) {
		boolean error = false;
		if (rUser.getUsername().isEmpty()) {
			result.rejectValue("username", "error.username");
			error = true;
		}
		if (rUser.getPassword().isEmpty()) {
			result.rejectValue("password", "error.password");
			error = true;
		}
		if (rUser.getEmail().isEmpty()) {
			result.rejectValue("email", "error.email");
			error = true;
		}
		return error;
	}
	
}
