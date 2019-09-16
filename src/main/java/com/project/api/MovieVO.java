package com.project.api;

import org.springframework.beans.factory.annotation.Value;

public class MovieVO {
	
	@Value("#{movie['kofic.api']}")
	private String api_key;
	
}
