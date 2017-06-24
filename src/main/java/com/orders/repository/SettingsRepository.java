package com.orders.repository;

import java.util.List;

import com.orders.domain.Settings;

public interface SettingsRepository {
	void save(Settings settings);
	Settings findOne(Long id);
    List<Settings> findAll();
}