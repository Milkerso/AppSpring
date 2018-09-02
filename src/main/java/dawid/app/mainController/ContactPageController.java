package dawid.app.mainController;

import javax.ws.rs.GET;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactPageController {

	@GET
	@RequestMapping(value = "/contact")
	public String showContactPage() {
		return "contact";
	}

}
