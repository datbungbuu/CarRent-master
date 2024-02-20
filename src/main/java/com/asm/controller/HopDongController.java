package com.asm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.dao.HopDongDAO;
import com.asm.entity.HopDong;

@Controller
@RequestMapping("hopdong")
public class HopDongController {

	@Autowired
	HopDongDAO hopDongDAO;

	@PostMapping("thue")
	public String clickThue(@ModelAttribute("contract") HopDong hopDong) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (sdf.format(hopDong.getNgayKetThuc()).equals(sdf.format(new Date()))) {
			return "redirect:/detail?id=" + hopDong.getXe().getBienSo();
		}
		hopDongDAO.save(hopDong);
		return "success";
	}

}
