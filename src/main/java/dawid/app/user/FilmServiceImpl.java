package dawid.app.user;

import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("filmService")
@Transactional
public class FilmServiceImpl implements FilmService {
	@Autowired
	private FilmRepository filmRepository;
	public void saveFilm(Film film) {


		
		filmRepository.save(film);
		
	}

	public Film findFilmByTitle(String title) {
		// TODO Auto-generated method stub
		return null;
	}

}
