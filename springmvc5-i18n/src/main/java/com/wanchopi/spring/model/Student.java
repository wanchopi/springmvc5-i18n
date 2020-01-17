package com.wanchopi.spring.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Getter;
import lombok.Setter;

/**
 * Entity
 * @author Wanchopi
 *
 */
public class Student {
	
	@NotNull
	@Size(min = 3, max = 25)
	@Getter @Setter
	private String userName;
	
	@NotNull
	@Email
	@Getter @Setter
	private String email;
	
	@NotNull
	@Pattern(regexp = "^(?=\\w*\\d)(?=\\w*[A-Z])(?=\\w*[a-z])\\S{4,6}$")
	@Getter @Setter
	private String password;
	
	@NotNull 
	@Getter @Setter
	private String gender;
	
	@NotNull
	@Getter @Setter
	private String country;
	
	@Getter @Setter
	private boolean receivePaper;
	
	@NotEmpty
	@Getter @Setter
	private String[] favoriteFrameworks;

}
