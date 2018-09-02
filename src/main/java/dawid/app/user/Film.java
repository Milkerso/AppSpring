package dawid.app.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "film")
public class Film {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "film_id")
	private int id;
	
	@Column(name = "title")
	@NotNull
	private String title;
	
	@Column(name = "director")
	@NotNull
	private String director;
	
	@Column(name = "production")
	@NotNull
	private String production;
	
	@Column(name = "description")
	@NotNull
	private String description;
	

	@Column(name = "year")
	@NotNull
	private String year;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public String getProduction() {
		return production;
	}


	public void setProduction(String production) {
		this.production = production;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}
	
	

	

}
