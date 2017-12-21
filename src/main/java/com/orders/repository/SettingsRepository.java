package com.orders.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.orders.domain.Settings;

@Repository
public interface SettingsRepository extends CrudRepository<Settings, Long> {
	//void save(Settings settings);
	Settings findOne(Long id);
    List<Settings> findAll();

}