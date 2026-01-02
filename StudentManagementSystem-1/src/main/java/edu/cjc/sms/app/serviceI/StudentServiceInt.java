package edu.cjc.sms.app.serviceI;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServiceInt {

	 public void registerStudent(Student student);

	public List<Student> getAllStudents();

	public List<Student> findByBatchNumberAndBatchMode(String bn, String bm);

	public Student getStudentById(int id);

	public void updateStudentBatch(int id, String batchNumber, String batchMode);

	public Student editStudent(Student student);

	public List<Student> deleteStudentById(int id);

	public void updateStudentFees(int id, double feesPaid, String paymentStatus);


}
