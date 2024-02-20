package com.asm.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "khachhang")
@Data
@NoArgsConstructor
public class KhachHang {

	// mã khách hàng, tự tăng
	@Id
	@Column(name = "makh")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer maKH;
	
	// địa chỉ email
	@Column(name = "email", nullable = false, unique=true)
	private String email;

	// số điện thoại
	@Column(name = "sodienthoai", nullable = false, unique=true)
	private Integer soDienThoai;

	// họ của khách hàng, trong tiếng anh là first name
	@Column(name = "hokh", nullable = false)
	private String hoKH;

	// tên của khách hàng, trong tiếng anh là last name
	@Column(name = "tenkh", nullable = false)
	private String tenKH;

	// số căn cước công dân
	@Column(name = "socccd")
	private Integer soCCCD;

	// tên tệp hình mặt trước của căn cước
	@Column(name = "hinhmattruoccccd")
	private String hinhMatTruocCCCD;

	// tên tệp hình mặt sau của căn cước
	@Column(name = "hinhmatsaucccd")
	private String hinhMatSauCCCD;

	// giới tính, nam hoặc nữ
	@Column(name = "gioitinh")
	private Boolean gioiTinh;

	// số giấy phép lái xe
	@Column(name = "sogplx")
	private Integer soGPLX;

	// tên tệp hình mặt trước của gplx
	@Column(name = "hinhmattruocgplx")
	private String hinhMatTruocGPLX;

	// tên tệp hình mặt sau của gplx
	@Column(name = "hinhmatsaugplx")
	private String hinhMatSauGPLX;

	// Tỉnh / Thành phố trực thuộc trung ương trong địa chỉ
	@Column(name = "tinh")
	private String tinh;

	// Quận / Huyện / Thị xã / Thành phố thuộc tỉnh / Thành phố thuộc thành phố
	// trực thuộc trung ương trong địa chỉ
	@Column(name = "huyen")
	private String huyen;

	// Xã / Phường / Thị trấn trong địa chỉ
	@Column(name = "xa")
	private String xa;

	// Đường trong địa chỉ
	@Column(name = "duong")
	private String duong;

//	@OneToMany(mappedBy = "khachhang")
//	private List<HoaDon> danhSachHoaDon;

//	@OneToMany(mappedBy = "khachhang")
//	private List<HopDong> danhSachHopDong;

}
