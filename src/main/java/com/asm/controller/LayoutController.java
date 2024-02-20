package com.asm.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.dao.CarDao;
import com.asm.entity.Car;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;




@Controller
public class LayoutController {
	@Autowired
	CarDao xedao;
	
	public void ClearForm(@ModelAttribute("carmodel") Car car) {
		car.setBienSo("");
		car.setHangXe("Tất Cả");
		car.setTenLoai("");
		car.setGiaXe(0.0);
		car.setNlTieuHao(0);
		car.setDiaDiem("");
		car.setMoTa("");
	}
	
	@RequestMapping("car/home")
	public String homepage() {
		
		return "home";
	}
	
	@GetMapping("car/list")
	public String listCar(Model model) {
		Car car = new Car();
		List<Car> cars = xedao.findAll();
		model.addAttribute("lscar",cars);
		return "listcar";
	}
	
	/*
	 * @GetMapping("/car/page") public String phantrang(Model model
	 * , @RequestParam("p") Optional<Integer> p) {
	 * 
	 * Pageable page = PageRequest.of(p.orElse(0), 2); model.addAttribute("lscar" ,
	 * xedao.findAll(page));
	 * 
	 * return "listcar"; }
	 */
	
	@GetMapping("car/add")
	public String indexadd(Model model, @ModelAttribute("carmodel") Car car ) {
		
		return "addcar";
	}
	
	
	@GetMapping("/car/sort")
	public String sortPrice(Model model , @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC , field.orElse("giaXe"));
		model.addAttribute("field" , field.orElse("giaXe").substring(0,1).toUpperCase() + field.orElse("giaXe").substring(1 , field.orElse("giaXe").length() ));
		model.addAttribute("lscar" , xedao.findAll(sort));
		
		return "listcar";
	}
	
	@GetMapping("/car/edit/{bienSo}")
	public String editCar(Model model , @PathVariable("bienSo") String bienSo , @ModelAttribute("carmodel") Car car) {
		if(xedao.findById(car.getBienSo()).isEmpty()) {
			return "redirect: /listcar";
		}else {
			Car cars = xedao.findById(bienSo).get();
			car.setBienSo(cars.getBienSo());
			car.setHangXe(cars.getHangXe());
			car.setTenLoai(cars.getTenLoai());
			car.setGiaXe(cars.getGiaXe());
			car.setSoCho(cars.getSoCho());
			car.setTruyenDong(cars.getTruyenDong());
			car.setNhienLieu(cars.getNhienLieu());
			car.setNlTieuHao(cars.getNlTieuHao());
			car.setDiaDiem(cars.getDiaDiem());
			car.setTrangThai(cars.isTrangThai());
			car.setImgDauXe(cars.getImgDauXe());
			car.setImgSuonTXe(cars.getImgSuonTXe());
			car.setImgSuonPXe(cars.getImgSuonPXe());
			car.setImgDuoiXe(cars.getImgDuoiXe());
			car.setMoTa(cars.getMoTa());
			
		}
		
		return "addcar";
	}
	
	@PostMapping("/car/create")
	public String addCar(Model model,  @ModelAttribute("carmodel") Car car) {
		
		if(!xedao.existsById(car.getBienSo())){
			xedao.save(car);
			ClearForm(car);
			System.out.println("thêm thành công");
		}else {
			throw new RuntimeException("mã này đã tồn tại");
		}
		
		return "addcar";
	}
	
	@PostMapping("/car/update")
	public String updateCar(Model model, @ModelAttribute("carmodel") Car car ) {
		
		if(xedao.existsById(car.getBienSo())){
			xedao.save(car);
			ClearForm(car);
			System.out.println("update thành công");
		}else {
			throw new RuntimeException("update không thành công");
		}
		
		return "addcar";
	}
	@PostMapping("/car/delete")
	public String deleteCar(Model model, @ModelAttribute("carmodel") Car car ) {
		
		if(xedao.existsById(car.getBienSo())){
			xedao.deleteById(car.getBienSo());
			ClearForm(car);
			System.out.println("xoá thành công");
		}else {
//			throw new RuntimeException("id này không tồn tại");
			System.out.println("id này không tồn tại");
		}
		
		return "addcar";
	}
	
	
}
