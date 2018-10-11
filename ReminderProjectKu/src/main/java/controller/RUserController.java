package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import services.RUserServicesImpl;
import services.UserValidationServicesImpl;
import auth.AuthService;
import entities.RUser;

/**
 * @author Nana Febriana
 */

@Controller
public class RUserController {

	@Autowired
	RUserServicesImpl rUserServices;
	
	@Autowired
	UserValidationServicesImpl userValidateImpl;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcomes() {
		return new ModelAndView("redirect:/createuserform.html");
	}

	/* userlist */
	@RequestMapping("/userlist")
	public ModelAndView userListView() {
		ModelAndView model = new ModelAndView("userlistpage");
		try {
			List<RUser> userList = rUserServices.getUserList();
			model.addObject("userList", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	/* userdelete */
	@RequestMapping(value = "/usersdelete/{id}", method = RequestMethod.GET)
	public String userDeleteForm(@PathVariable("id") int id, RedirectAttributes attributes) {
		rUserServices.deleteUser(id);
		attributes.addFlashAttribute("msgdelete", "User has been removed successfully.");
		return "redirect:/userlist";
	}
	
	/* usercreate */
	@RequestMapping(value = "/createuserform", method = RequestMethod.GET)
	public ModelAndView createUser() {
		return new ModelAndView("userformpage", "ruser", new RUser());
	}
	
	/* usercreate */
	@RequestMapping(value = "/submituserform.html", method = RequestMethod.POST)
	public ModelAndView createUserForm(@ModelAttribute("ruser") @Valid RUser rUser,BindingResult result, RedirectAttributes redirectAttr ) {
		ModelAndView model = null;
		try {
			if (result.hasErrors()) {
				model = new ModelAndView("userformpage");
			} else {
				AuthService auth = new AuthService();
				Boolean checkUnameEmail = auth.checkUsernameAndEmail(rUser.getUsername(), rUser.getEmail());
				boolean error = userValidateImpl.userValidation(rUser, result);
				if (error == false ){
					if ( checkUnameEmail == false ){
						rUserServices.createUser(rUser);
						model = new ModelAndView("redirect:/userlist");
						redirectAttr.addFlashAttribute("msgcreate","Succesfully create user. ");
					}   else {
						model = new ModelAndView("userformpage");
						model.addObject("msg","Username or email already exist. ");
					}
				} else {
					model = new ModelAndView("userformpage");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	
	/* useredit */
	@RequestMapping(value = "/usersedit/{id}")
	public ModelAndView edit(@PathVariable int id) {
		RUser user = rUserServices.getUserById(id);
		return new ModelAndView("usereditform", "ruser", user);
	}

	/* useredit */
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("ruser") RUser rUser, BindingResult result) {
		ModelAndView model = null;
		try {
			if (result.hasErrors()) {
				model = new ModelAndView("usereditform");
			} else {
				boolean error = userValidateImpl.userValidation(rUser, result);
				System.out.println("error " + error);
				
				if (error == false ){
					rUserServices.updateUserObj(rUser);
					model = new ModelAndView("redirect:/userlist");
				} else {
					model = new ModelAndView("usereditform");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model; 
	}
}
