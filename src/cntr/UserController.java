package cntr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ComplaintDao;
import dao.UserDao;
import dto.Complaint;
import dto.Hostel;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;

	public UserController() {
		super();
	}

	public UserDao getUserdao() {
		return userDao;
	}

	public void setUserdao(UserDao userdao) {
		this.userDao = userdao;
	}
	
	
	@Autowired
	private ComplaintDao complaint;

	

	public ComplaintDao getComplaint() {
		return complaint;
	}

	public void setComplaint(ComplaintDao complaint) {
		this.complaint = complaint;
	}
	
	
	
	
	
	@RequestMapping(value="user_register1.htm")
	public String register(ModelMap model)
	{
	model.put("hostel", new Hostel());
	return "user_register";
	}
	
	
	@RequestMapping(value="reg1.htm",  method = RequestMethod.POST)
	public String register1(Hostel hostel ,ModelMap model)
	{
	 userDao.createUser(hostel);
	 return "home_login";
	}
	
	
	@RequestMapping(value="/home_login.htm")
	public String login(ModelMap model,HttpSession session) {
	
		model.put("hostel", new Hostel());
		return "home_login";
		
	}
	
	@RequestMapping(value="/error.htm")
	public String error(ModelMap model) {

		return "error";
		
	}
	
	
	
	 @RequestMapping(value="/my_profile.htm") 
	 public String my_profile(ModelMap model,Hostel hostel) {
		 model.put("hostel2", hostel);
	 return "my_profile";
	 
	  }

	
	
	@RequestMapping(value="/user_page.htm")
	public String userPage(ModelMap model) {

		return "user_page";
		
	}
	
	@RequestMapping(value="/logout.htm")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
		
	}
	
	@RequestMapping(value="/login.htm")
	public String login() {
		return "user_page";
		
	}
	
	/*
	 * @RequestMapping(value="/complaint_form.htm") public String complaint() {
	 * return "complaint_form";
	 * 
	 * }
	 */
	
	
	@RequestMapping(value="/login.htm" , method = RequestMethod.POST)
	public String login1(Hostel hostel,ModelMap model,HttpSession session)
	{
		if(hostel.getEmailId().equals("admin@gmail.com") && hostel.getPassword().equals("admin123"))
		{
			session.setAttribute("emailId","admin@gmail.com");
			return "admin";			
		}
		else {
		List<Hostel> list=userDao.login(hostel);
		if(list.isEmpty())
		{
		model.put("hostel", new Hostel());
		return "home_login";
		}
		else {
			//model.put("hostel2",hostel);
			session.setAttribute("hostel",hostel);
			return "user_page";
		}
	}
}
	
	@RequestMapping("/select.htm")
	public String select1(HttpServletRequest request,ModelMap model,HttpSession session)
	{
	
		String em = (String)session.getAttribute("emailId");
		//String str=request.getParameter("emailId");
		System.out.println(em);
	Hostel u=userDao.selectUser(em);
	model.put("hostel", u);
	System.out.println("hi");
	return "update_user";

	}
	
	
	@RequestMapping("/update.htm")
	public String update1(Hostel hostel,ModelMap model)
	{
		System.out.println(hostel);
		userDao.updateUser(hostel);
	
	return "update";
	}
	
	
	@RequestMapping("/userlist.htm")
	public String select(ModelMap model) {
		List<Hostel>list=userDao.selectUsers();
		model.put("ulist", list);
		return "userlist";
	}
	
	
	  @RequestMapping("/studentcomplaints.htm") public String
	  selectcomplaints(ModelMap model) {
	  
	  List<Complaint>list=complaint.userComplaints(); System.out.println(list);
	  model.put("clist", list); return "complaintlist"; }
	 
	
	@RequestMapping(value="complaint_form.htm")
	public String complaint(ModelMap model)
	{
		System.out.println("hiiiiiiii form");
	model.put("complaint", new Complaint());
	return "complaint_form";
	}
	
	@RequestMapping(value="complaint.htm",  method = RequestMethod.POST)
	public String register1(Complaint complaint1 ,ModelMap model)
	{
		System.out.println("hiiiiiiii");
		complaint.createComplaint(complaint1);
	 return "complaint_successful";
	}
	
	
	
	
}