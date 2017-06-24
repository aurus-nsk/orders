package com.orders.web;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.orders.domain.Settings;
import com.orders.service.SettingsService;

@Controller
@Transactional
@PreAuthorize("isAuthenticated()")
public class SettingsController {
	@Autowired
    private SettingsService settingsService;
	
	@RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String get(Model model) {
		List<Settings> settings = settingsService.findAll();
	    model.addAttribute("settings", settings);
        return "settings/all";
    }
	
	@RequestMapping(value = "/settings", method = RequestMethod.POST)
    public String add(Model model) {
		List<Settings> settings = settingsService.findAll();
	    model.addAttribute("settings", settings);
        return "settings/all";
    }
}