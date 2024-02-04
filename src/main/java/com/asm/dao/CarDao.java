package com.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CarDao extends JpaRepository<com.asm.entity.Car, String> {

}
