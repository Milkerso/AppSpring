package dawid.app.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import dawid.app.constants.ApplicationConstants;
import dawid.app.user.User;
import dawid.app.utilities.ApplicationUtils;

public class UserRegisterValidator implements Validator {
	
	public boolean supports(Class<?> cls) {
		return User.class.equals(cls);
	}


	public void validate(Object obj, Errors errors) {
		User u = (User) obj;
		
		ValidationUtils.rejectIfEmpty(errors, "name", "error.userName.empty");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "error.userLastName.empty");
		ValidationUtils.rejectIfEmpty(errors, "email", "error.userEmail.empty");
		ValidationUtils.rejectIfEmpty(errors, "password", "error.userPassword.empty");
		
		if (!u.getEmail().equals(null)) {
			boolean isMatch = ApplicationUtils.checkEmailOrPassword(ApplicationConstants.emailPattern, u.getEmail());
			if(!isMatch) {
				errors.rejectValue("email", "error.userEmailIsNotMatch");
			}
		}
		
		if (!u.getPassword().equals(null)) {
			boolean isMatch = ApplicationUtils.checkEmailOrPassword(ApplicationConstants.passwordPattern, u.getPassword());
			if(!isMatch) {
				errors.rejectValue("password", "error.userPasswordIsNotMatch");
			}
		}
		
	}
	
	public void validateEmailExist(User user, Errors errors) {
		if (user != null) {
			errors.rejectValue("email", "error.userEmailExist");
		}
	}

}
