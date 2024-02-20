package com.asm.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "Car")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Car {
	 @Id
	 //@NotBlank
	 private String bienSo;
	 
//	 @NotBlank (message = "Vui Lòng Chọn Hảng Xe")
	 private String hangXe; // nguồn gốc // sử dụng select
	 
	 //@NotBlank (message = "Vui Lòng Nhập Tên Loại Xe")
	 private String tenLoai;
	 
	// @NotNull
	 private double giaXe; 
	
	 //@NotNull
	 private String soCho; // dung  lượng // sử dụng radio
	 
	 //@NotNull
	 private String truyenDong; // truyền động // sử dụng radio
	 
	// @NotNull
	 private String nhienLieu;
	 
	// @NotNull
	 private int nlTieuHao;
	 
	 //@NotBlank
	 private String diaDiem;
	 
	
	 private boolean trangThai;
	 
	 //@NotBlank
	 private String imgDauXe;
	// @NotBlank
	 private String imgDuoiXe;
	 //@NotBlank
	 private String imgSuonPXe;
	 //@NotBlank
	 private String imgSuonTXe;
	 //@NotBlank 
	 private String moTa;
	 
	 
}
