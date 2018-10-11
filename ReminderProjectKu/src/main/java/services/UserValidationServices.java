package services;

import org.springframework.validation.BindingResult;

import entities.RUser;

/**
 * @author Nana Febriana
 */

public interface UserValidationServices {

	public boolean userValidation(RUser rUser, BindingResult result);

}