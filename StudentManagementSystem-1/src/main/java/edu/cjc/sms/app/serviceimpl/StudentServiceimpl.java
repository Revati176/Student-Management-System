package edu.cjc.sms.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.repository.StudentRepository;
import edu.cjc.sms.app.serviceI.StudentServiceInt;

@Service
public class StudentServiceimpl implements StudentServiceInt{

	@Autowired
	StudentRepository sr;

	@Override
	public void registerStudent(Student student) 
	{
		sr.save(student);
	}

	@Override
	public List<Student> getAllStudents()
	{
		return sr.findAll();
	}

	@Override
	public List<Student> findByBatchNumberAndBatchMode(String bn, String bm) {
		return sr.findByBatchNumberAndBatchMode(bn, bm);
	}

	@Override
	public Student getStudentById(int id) {
		
		return sr.findById(id).orElse(null);
	}

	@Override
	public void updateStudentBatch(int id, String batchNumber, String batchMode) {
		Student student=sr.findById(id).orElse(null);
		if(student!=null)
		{
			student.setBatchMode(batchMode);
			student.setBatchNumber(batchNumber);
			sr.save(student);
		}
	}

	@Override
	public Student editStudent(Student student) {
		return sr.save(student);
	}

	@Override
	public List<Student> deleteStudentById(int id) {
		sr.deleteById(id);
		return sr.findAll();
	}

	@Override
	public void updateStudentFees(int id, double feesPaid, String paymentStatus) {
		Student student = sr.findById(id).orElse(null);
		if(student!=null) {
			student.setFeesPaid(feesPaid);
			student.setPaymentStatus(paymentStatus);
			sr.save(student);
		}
		
	}
	
}
