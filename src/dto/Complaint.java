package dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="complaints")
public class Complaint {
	
	@Id	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int complaintNo;
	private String emailId;
	private String studentName;
	private String contact;
	private String Complaint;
	
	public Complaint() {
		super();
	}

	public int getComplaintNo() {
		
		return complaintNo;
	}

	public void setComplaintNo(int complaintNo) {
		this.complaintNo=complaintNo;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getComplaints() {
		return Complaint;
	}

	public void setComplaints(String complaints) {
		Complaint = complaints;
	}

	@Override
	public String toString() {
		return "Complaint [studentName=" + studentName + ", emailId=" + emailId + ", contact=" + contact
				+ ", Complaint=" + Complaint + "]";
	}
	
	
}
