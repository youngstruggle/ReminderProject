package auth;

import org.springframework.validation.BindingResult;

import entities.RUser;

/**
 * @author Nana Febriana
 */

public interface UserValidationAuth {

	public boolean userValidation(RUser rUser, BindingResult result);

}