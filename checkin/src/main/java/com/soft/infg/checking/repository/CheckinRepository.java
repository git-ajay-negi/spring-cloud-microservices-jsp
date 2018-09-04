package com.soft.infg.checking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.soft.infg.checking.entity.CheckInRecord;

public interface CheckinRepository extends JpaRepository<CheckInRecord,Long> {

}
