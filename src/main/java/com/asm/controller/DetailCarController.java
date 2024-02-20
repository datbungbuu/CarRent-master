package com.asm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.entity.HopDong;
import com.asm.entity.Xe;
import com.asm.service.impl.XeServiceImpl;

@Controller
public class DetailCarController {

	@Autowired
	XeServiceImpl xeService;
	
	// 51H-079.53

	@GetMapping("detail")
	public String detail(Model model, @RequestParam("id") String id) {
		Xe xe = xeService.getInfoXe(id);
		int numberOfSeats = xe.getSoCho();

		String properties = xe.getDacDiem();
		
		String transmission = null;
		String fuelType = null;
		String fuelConsumption = null;
		
		// Tách chuỗi thành mảng các phần tử
        String[] elements = properties.split(";");

        // Khai báo danh sách cho cặp khóa-giá trị
        List<String[]> keyValueList = new ArrayList<>();

        // Xử lý từng phần tử của mảng
        for (String element : elements) {
            // Tách mỗi phần tử thành mảng dựa trên dấu hai chấm
            String[] keyValue = element.split(":");
            if (keyValue.length == 2) {
                // Lấy giá trị sau dấu hai chấm và loại bỏ khoảng trắng ở đầu và cuối
                String key = keyValue[0].trim();
                String value = keyValue[1].trim();

                // Thêm cặp khóa-giá trị vào danh sách
                keyValueList.add(new String[]{key, value});
            }
        }

        // Lấy cặp khóa-giá trị
        for (String[] keyValue : keyValueList) {
        	if (keyValue[0].equalsIgnoreCase("Truyền động")) {
        		transmission = keyValue[1];
        	}
        	if (keyValue[0].equalsIgnoreCase("Nhiên liệu")) {
        		fuelType = keyValue[1];
        	}
        	if (keyValue[0].equalsIgnoreCase("Nhiên liệu tiêu hao")) {
        		fuelConsumption = keyValue[1];
        	}
        }
		
        String features = xe.getTienNghi();

        // Tách chuỗi thành mảng các chuỗi con
        String[] featureArray = features.split(", ");
        
        // Khai báo các biến cho các chuỗi cần tạo
        String map = null;
        String camera = null;
        String reverseCamera = null;
        String sensor = null;
        String speedWarning = null;
        String spareTire = null;
        String dvdScreen = null;
        String etc = null;
        String airbag = null;
        String collisionSensor = null;
        String fullCamera = null;
        String gps = null;
        String usb = null;
        
        // Lấy các tính năng đã tách
        for (String feature : featureArray) {
            if (feature.equalsIgnoreCase("Bản đồ")) {
            	map = feature;
            }
            if (feature.equalsIgnoreCase("Camera hành trình")) {
            	camera = feature;
            }
            if (feature.equalsIgnoreCase("Camera 360")) {
            	fullCamera = feature;
            }
            if (feature.equalsIgnoreCase("Camera lùi")) {
            	reverseCamera = feature;
            }
            if (feature.equalsIgnoreCase("Cảm biến lốp")) {
            	sensor = feature;
            }
            if (feature.equalsIgnoreCase("Cảm biến va chạm")) {
            	collisionSensor = feature;
            }
            if (feature.equalsIgnoreCase("Cảnh báo tốc độ")) {
            	speedWarning = feature;
            }
            if (feature.equalsIgnoreCase("Lốp dự phòng")) {
            	spareTire = feature;
            }
            if (feature.equalsIgnoreCase("Màn hình DVD")) {
            	dvdScreen = feature;
            }
            if (feature.equalsIgnoreCase("Định vị GPS")) {
            	gps = feature;
            }
            if (feature.equalsIgnoreCase("Khe cắm USB")) {
            	usb = feature;
            }
            if (feature.equalsIgnoreCase("Túi khí an toàn")) {
            	airbag = feature;
            }
            if (feature.equalsIgnoreCase("ETC")) {
            	etc = feature;
            }
        }
        model.addAttribute("numberOfSeats", numberOfSeats);
        model.addAttribute("transmission", transmission);
        model.addAttribute("fuelType", fuelType);
        model.addAttribute("fuelConsumption", fuelConsumption);
        model.addAttribute("map", map);
        model.addAttribute("camera", camera);
        model.addAttribute("sensor", sensor);
        model.addAttribute("reverseCamera", reverseCamera);
        model.addAttribute("speedWarning", speedWarning);
        model.addAttribute("spareTire", spareTire);
        model.addAttribute("dvdScreen", dvdScreen);
        model.addAttribute("etc", etc);
        model.addAttribute("airbag", airbag);
        model.addAttribute("gps", gps);
        model.addAttribute("fullCamera", fullCamera);
        model.addAttribute("collisionSensor", collisionSensor);
        model.addAttribute("usb", usb);
        
		HopDong hopDong = new HopDong();
		
		List<Xe> randomXe = xeService.getRandomCars();
		
		model.addAttribute("contract", hopDong);
		model.addAttribute("car", xe);
		model.addAttribute("cars", randomXe);
		return "detail-car";
	}
}
