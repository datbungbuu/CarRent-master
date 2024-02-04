package com.asm.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.dao.AccountDAO;
import com.asm.entity.Account;
import com.asm.helper.managerOTP;
import com.asm.service.ParamService;
import com.asm.service.SessionService;
import com.asm.util.MailInfo;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
public class mainController {
	
	managerOTP mOTP = new managerOTP();
	String otp = "";
	
	private static final String SDT_Vali = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
	private static final String Email_Vali = "[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
	
	@Autowired
	HttpServletRequest req;
	
	@Autowired
	AccountDAO accDAO;
	
	@Autowired
	com.asm.service.MailService mailService;
	
	@Autowired
	SessionService session;
	
	@RequestMapping("/car/login")
	public String login() {
		return "Login/login";
	}	
		
	
	@RequestMapping("/car/login/submit")
	public String loginSubmit(Model model, @RequestParam("username") String username, @RequestParam("password") String password) {
		
		boolean flag = true;
		if(username.equalsIgnoreCase("") || password.equalsIgnoreCase("")) {
			flag = false;	
		}else {
			try {
				Account account = accDAO.findByUsername(username);			
				if (username.equals(account.getUsername())) {
					if(password.equals(account.getPassword())) {							
						session.setAttribute("currentAccount", account);
						String uri = (String) session.getAttribute("security-uri");
						flag = true;
						if(uri != null) {
							return "redirect:" + uri;
						}else {
							flag = true;
						}
					}else {
						flag = false;
					}	
				}else {
					flag = false;
				}
						
			} catch (Exception e) {
				flag = false;
			}
		}
		
		if(flag == true) {
			return "redirect:/car/index";
		}else {
			model.addAttribute("errorMessage", "Thông Tin Đăng Nhập Chưa Chính Xác !!");
			return "Login/login";
		}
	}
	
	@RequestMapping("car/register")
	public String register(Model model) {
		Account account = new Account();
		model.addAttribute("account", account);
		return "Login/register";
	}
	
	@RequestMapping("car/register/submit")
	public String registerSubmit(Model model,@Valid @ModelAttribute("account") Account account, BindingResult result) {
		String confirmpass = req.getParameter("cfpassword");
		boolean ktSDT = account.getPhonenumber().matches(SDT_Vali);
		boolean ktEmail = account.getEmail().matches(Email_Vali);
		
		if(result.hasErrors()) {
			model.addAttribute("errorMessageP", "Vui Lòng Xác Nhận Mật Khẩu!");
			return "Login/register";
		}else {			
			if(!accDAO.existsById(account.getUsername())) {
				if (ktSDT == true) {
					if (ktEmail == true) {
						Account accT = accDAO.findByEmail(account.getEmail());
						if (accT==null ||  !accT.getEmail().equals(account.getEmail()) ) {
							if(account.getPassword().equals(confirmpass)) {
								accDAO.save(account);
								return "Login/login";
							}else {
								model.addAttribute("errorMessageP", "Xác Nhận Mật Khẩu Chưa Đúng!");
								return "Login/register";
							}
						}else {
							model.addAttribute("errorMessageE", "Email Đã Tồn Tại!");
							return "Login/register";
						}	
					}else {
						model.addAttribute("errorMessageE", "Định Dạnh Email Chưa Đúng!");
						return "Login/register";
					}										
				}else {
					model.addAttribute("errorMessageS", "Số Điện Thoại Chưa Đúng!");
					return "Login/register";
				}					
			}else {
				model.addAttribute("errorMessageU", "Người Dùng Đã Tồn Tại!");
				return "Login/register";
			}
		}				
	}
	
	@RequestMapping("/car/forgotpassword")
	public String forgot() {
		return "Login/forgot";
	}
	
	@RequestMapping("/car/forgotpassword/submit")
	public String forgotsubmit(Model model,@RequestParam("email") String email) throws IOException, MessagingException{
		if (email.equals("") || email == null) {
			model.addAttribute("errorMessage", "Email Không Hợp Lệ!!");
			return "Login/forgot";	
		}else {
			boolean ktEmail = email.matches(Email_Vali);
			if(ktEmail == true) {
				Account acc = accDAO.findByEmail(email);
				if(acc==null) {
					model.addAttribute("errorMessage", "Email Không Hợp Lệ!!");
					return "Login/forgot";
				}else {
					mOTP.generateOTP(6);
					otp = mOTP.getmaOTP();
					
					long expirationTimeMillls = 30000;
		            mOTP.startOTP(expirationTimeMillls);
					
					//MailHelper helper = new MailHelper();
					MailInfo mail = new MailInfo();
					mail.setFrom("CarR");
					mail.setTo(email);
					//mail.setTo(TO);
					//mail.setCc(emailCC);
					mail.setSubject("Mã OTP Của Bạn Là: " + otp);
					mail.setBody("Vui Lòng Nhập Mã OTP Để Xác Nhận Để Lấy Lại Mật Khẩu !");
					
					session.setAttribute("email", email);
					mailService.queue(mail);
					return "Login/confirmOTP";
				}
				
			}else {
				model.addAttribute("errorMessage", "Định Dạng Email Chưa Đúng!");
				return "Login/forgot";
			}	
		}
	}	
	
	@RequestMapping("/car/forgotpassword/otp/submit")
	public String cofirmotp(Model model, @RequestParam("maotp")String maotp) {
		if(otp == mOTP.getmaOTP()) {
			if(maotp.equals("") || maotp==null) {
				model.addAttribute("errorMessage", "Nhập OTP !!");
				return "Login/confirmOTP";
			}else {
				if(maotp.equals(otp)) {					
					return "Login/resetpass";
				}else {
					model.addAttribute("errorMessage", "Mã OTP Chưa Chính Xác !!");
					return "Login/confirmOTP";
				}
			}
		}else {
			if(maotp.equals("") || maotp==null) {
				model.addAttribute("errorMessage", "Nhập OTP !!");
				return "Login/confirmOTP";
			}else {
				Integer.parseInt(maotp);
				model.addAttribute("errorMessage", "Mã OTP Hết Hiệu Lực!");
				return "Login/confirmOTP";
			}
		}				
	}
	
	@RequestMapping("/car/forgotpassword/resetpassword")
	public String resetPassword(Model model, @RequestParam("newpw") String newpw, @RequestParam("confirmpw") String confirmpw) {
			
		boolean flag;
		
		if(newpw.equals("") && confirmpw.equals("")) {
			model.addAttribute("errorMessage","Vui Lòng Nhập Mật Khẩu Mới!");
			model.addAttribute("errorMessage1","Vui Lòng Xác Nhận Mật Khẩu Mới !");
			return "Login/resetpass";
		}else if(newpw.equals("")) {
			model.addAttribute("errorMessage","Vui Lòng Nhập Mật Khẩu Mới!");
			return "resetpass";
		}else if(confirmpw.equals("")){
			model.addAttribute("errorMessage1","Vui Lòng Xác Nhận Mật Khẩu Mới !");
			return "Login/resetpass";
		}
		
		if(!newpw.equals(confirmpw)) {
			model.addAttribute("errorMessage2","Xác Nhận Mật Khẩu Chưa Chính Xác!");
			return "Login/resetpass";
		}else {				
			String email = session.getAttribute("email");
			Account acc = accDAO.findByEmail(email);
			if(acc == null) {
				model.addAttribute("errorMessage2","Tài Khoản Không Tồn Tại!");
				flag = false;
			}else {
				acc.setPassword(newpw);
				accDAO.save(acc);
				session.removeAttribute("email");
				model.addAttribute("errorMessage2","Cập Nhật Thành Công");
				flag = true;			
			}			
		}
			
		if(flag == true) {
			return "redirect:/car/login";		
		}else {
			return "Login/resetpass";
		}
	}
	
	@RequestMapping("car/logout")
	public String logout(Model model) {
		session.removeAttribute("currentAccount");
		session.removeAttribute("security-uri");
		return "redirect:/car/index";
	}
	
	@RequestMapping("/car/index")
	public String index() {
		return "index";
	}
}
