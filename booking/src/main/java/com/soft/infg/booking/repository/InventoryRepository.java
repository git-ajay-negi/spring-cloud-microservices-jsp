package com.soft.infg.booking.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.soft.infg.booking.entity.Inventory;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {

	Inventory findByFlightNumberAndFlightDate(String flightNumber, String flightDate);
	
}
