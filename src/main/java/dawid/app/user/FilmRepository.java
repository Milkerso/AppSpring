package dawid.app.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("filmRepository")
public interface FilmRepository  extends JpaRepository<Film, Integer>{
	public Film findByTitle(String title);

}
