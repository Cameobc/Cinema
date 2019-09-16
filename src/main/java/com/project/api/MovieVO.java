package com.project.api;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

public class MovieVO {
	
	@Value("#{movie['kofic.api']}")
	private String api_key;
	

}
