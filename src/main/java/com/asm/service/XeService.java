package com.asm.service;

import java.util.List;

import com.asm.entity.Xe;

public interface XeService {

	public List<Xe> getRandomCars();
	
	public Xe getInfoXe(String bienSo);
}
