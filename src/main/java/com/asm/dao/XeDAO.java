package com.asm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.asm.entity.Xe;

public interface XeDAO extends JpaRepository<Xe, String> {
	@Query(value = "SELECT TOP 4 * FROM xe ORDER BY NEWID()", nativeQuery = true)
	List<Xe> findRandomRecords();
}
