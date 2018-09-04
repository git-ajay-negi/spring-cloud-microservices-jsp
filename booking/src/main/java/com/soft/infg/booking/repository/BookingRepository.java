package com.soft.infg.booking.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.soft.infg.booking.entity.BookingRecord;

public interface BookingRepository extends CrudRepository<BookingRecord, Long> {
	

	
}
