package dawid.app.user;

import java.util.Locale;

import javax.ws.rs.GET;
import javax.ws.rs.POST;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AddFilmController {
	
	@Autowired
	private FilmService filmService;
	
	@Autowired
	MessageSource messageSource;
	
	@GET
	@RequestMapping(value = "/addfilm")
	public String addfilmForm(Model model) {
		Film film = new Film();
		model.addAttribute("film", film);
		return "addfilm";
	}
	
	@POST
	@RequestMapping(value = "/addnextfilm")
	public String registerAction(Film film, BindingResult result, Model model, Locale locale) {
				
		String returnPage = null;
		
		//Film filmExist = filmService.findFilmByTitle(film.getTitle());
		
	
			filmService.saveFilm(film);
			model.addAttribute("message", messageSource.getMessage("user.register.success", null, locale));
			model.addAttribute("film", new Film());
			returnPage = "addfilm";
		
		
		return returnPage;
	}

}
