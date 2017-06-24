package com.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.orders.domain.Settings;
import com.orders.repository.SettingsRepository;

public class SettingsService {
	
	@Autowired
	SettingsRepository settingsRepositry;
	
	public void save(Settings settings) {
		settingsRepositry.save(settings);
	}
	
	public Settings findOne(Long id) {
		return settingsRepositry.findOne(id);
	}
	
    public List<Settings> findAll() {
    	return settingsRepositry.findAll();
    }
}