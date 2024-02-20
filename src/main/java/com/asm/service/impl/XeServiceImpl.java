package com.asm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.dao.XeDAO;
import com.asm.entity.Xe;
import com.asm.service.XeService;

@Service
public class XeServiceImpl implements XeService {

    @Autowired
    private XeDAO xeDao;

    @Override
    public List<Xe> getRandomCars() {
        return xeDao.findRandomRecords();
    }

    @Override
    public Xe getInfoXe(String bienSo) {
        return xeDao.findById(bienSo).get();
    }

}
