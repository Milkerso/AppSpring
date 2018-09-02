package dawid.app.user;

public interface FilmService {
	
	public void saveFilm(Film film);
	public Film findFilmByTitle(String title);

}
