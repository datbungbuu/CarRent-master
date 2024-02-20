package com.asm.entity;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
@Entity @Table(name = "Accounts")
public class Account implements Serializable {
	@Id
	@NotBlank(message = "Tên Đăng Nhập Không Được Để Trống!")
	String username;
	@NotBlank(message = "Vui Lòng Nhập Mật Khẩu!")
	String password;
	@NotBlank(message = "Vui Lòng Nhập Họ !")
	String firstname;
	@NotBlank(message = "Vui Lòng Nhập Tên!")
	String lastname;
	boolean gender;
	@NotBlank(message = "Vui Lòng Nhập Số Điện Thoại!")
	String phonenumber;
	Date birthday;
	@NotBlank(message = "Vui Lòng Nhập Email!")
	String email;
	String avatar;
	boolean active;
	boolean role;
}
