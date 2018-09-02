package dawid.app.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import dawid.app.constants.ApplicationConstants;
import dawid.app.user.User;
import dawid.app.utilities.ApplicationUtils;

public class ChangePasswordValidator implements Validator {

	public boolean supports(Class<?> cls) {
		return User.class.equals(cls);
	}

	public void validate(Object obj, Errors errors) {
		
		@SuppressWarnings("unused")
		User u = (User) obj;
		
		ValidationUtils.rejectIfEmpty(errors, "newPassword", "error.userPassword.empty");
		
	}
	
	public void checkPasswords(String newPass, Errors errors) {
		
		if (!newPass.equals(null)) {
			boolean isMatch = ApplicationUtils.checkEmailOrPassword(ApplicationConstants.passwordPattern, newPass);
			if(!isMatch) {
				errors.rejectValue("newPassword", "error.userPasswordIsNotMatch");
			}
		}
	}
}
