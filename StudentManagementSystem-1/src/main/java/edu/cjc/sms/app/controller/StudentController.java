package edu.cjc.sms.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.serviceI.StudentServiceInt;

@Controller
public class StudentController {

	@Autowired
	StudentServiceInt ssi;
	
	@RequestMapping("/")
	public String display()
	{
		return "display";
	}
	
	@RequestMapping("adminlogin")
	public String login() 
	{
		return "login";
	}
	
	@RequestMapping("loginn")
	public String getlogin(@RequestParam("username")String username,@RequestParam("password")String password)
	{
		if(username.equals("Admin")&& password.equals("Admin123"))
		{
			return "adminscreen";
		}
		else {
			return "display";
		}
	}

	
	@RequestMapping("/addStudent")
	public String addStudent()
	{
		return "register";
	}
	
	@RequestMapping("registers")
	public String registersuc1(@ModelAttribute Student student, Model m)
	{
		ssi.registerStudent(student);
		return "afterreg";
	}
	
	@RequestMapping("comreg")
	public String homepg1()
	{
		return "display";
	}
	
	@RequestMapping("studregister")
	public String studreg()
	{
		return "register";
	}
	
	@RequestMapping("streg")
	public String compreg()
	{
		return "afterreg";
	}
	@RequestMapping("/viewStudents")
	public String viewStudent(Model m) 
	{
		List<Student> slist=ssi.getAllStudents();
		m.addAttribute("students", slist);
		return "view";
	}
	
	@RequestMapping("searchByBatchNumberAndBatchMode")
	public String search( @RequestParam("batchNumber") String bn, @RequestParam("batchMode") String bm, Model m)
	{
	    List<Student> searchList = ssi.findByBatchNumberAndBatchMode(bn, bm);
	    List<Student> allStudents = ssi.getAllStudents();

	    if (searchList.isEmpty())
	    {
	        m.addAttribute("message", "No data found for selected Batch Number and Mode");
	        m.addAttribute("students", allStudents); 
	    } 
	    else
	    {
	        m.addAttribute("students", searchList);
	    }

	    return "view";
	}
	
	@RequestMapping("payfees")
	public String fees(@RequestParam("id") int id,Model m)
	{
		Student stu=ssi.getStudentById(id);
		m.addAttribute("students", stu);
		return "fees";
	}
	
	@RequestMapping("updatefees")
	public String upfees(
	        @RequestParam("id") int id,
	        @RequestParam("feesPaid") double feesPaid,
	        @RequestParam("paymentStatus") String paymentStatus,
	        Model m)
	{
	    ssi.updateStudentFees(id, feesPaid, paymentStatus);

	    List<Student> slist = ssi.getAllStudents();
	    m.addAttribute("students", slist);
	    return "view";
	}

	
	@RequestMapping("shiftbatch")
	public String batchchange(@RequestParam("id") int id,Model m)
	{
		Student stu=ssi.getStudentById(id);
		m.addAttribute("students", stu);
		return "shiftbatch";
	}
	
	@RequestMapping("updatebatch")
	public String upbatch(@RequestParam("id")int id,@RequestParam("batchNumber")String batchNumber, @RequestParam("batchMode")String batchMode,Model m)
	{
		ssi.updateStudentBatch(id,batchNumber,batchMode);
		List<Student> slist=ssi.getAllStudents();
		m.addAttribute("students", slist);
		return "view";
	}
	
	@RequestMapping("edit")
	public String edit(@RequestParam("id")int id,Model m)
	{
		Student stud = ssi.getStudentById(id);
		m.addAttribute("student", stud);
		return "edit";
	}
	
	@RequestMapping("updateStudent")
	public String editData(@ModelAttribute Student student,Model m)
	{
		Student students=ssi.editStudent(student);
		List<Student> slist=ssi.getAllStudents();
		m.addAttribute("students", slist);
		return "view";
		
	}
	
	@RequestMapping("delete")
	public String delete(@RequestParam("id")int id,Model m )
	{
		List<Student> stud = ssi.deleteStudentById(id);
		m.addAttribute("students", stud);
		return "view";
	}
	
	@RequestMapping("aboutbatch")
	public String viewBatches()
	{
		return "batch";
	}
	
	@RequestMapping("jobs")
	public String jobbatch()
	{
		return "jobbatch";
	}
	
	@RequestMapping("skills")
	public String skillbatch()
	{
		return "skillbatch";
	}
	
	@RequestMapping("contact")
	public String contact()
	{
		return "contact";
	}
}
