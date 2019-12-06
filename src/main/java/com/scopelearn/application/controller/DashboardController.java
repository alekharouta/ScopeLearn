/**
 * alekh
 */

package com.scopelearn.application.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DashboardController {

	@GetMapping("/h")
	public int get() {
		return 12;
	}
	
	
}