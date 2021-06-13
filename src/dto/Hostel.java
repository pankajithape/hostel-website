package dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
	@Entity
	@Table(name="user")
	public class Hostel {
			private String studentName;
			private String password;
			@Id
			private String emailId;
			private String gender;
			private String dateOfBirth;
			private String bloodGroup;
			private String contact;
			private String address;
			private String state;
			private String city;
			private String status;
			

		public String getStudentName() {
			return studentName;
		}
		
		public void setStudentName(String studentName) {
			this.studentName = studentName;
		}
		
		
		public String getPassword() {
			return password;
		}
		
		public void setPassword(String password) {
			this.password = password;
		}
		
		public String getEmailId() {
			return emailId;
		}
		
		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}
		
		public String getGender() {
			return gender;
		}
		
		public void setGender(String gender) {
			this.gender = gender;
		}
		
		public String getDateOfBirth() {
			return dateOfBirth;
		}
		
		public void setDateOfBirth(String dateOfBirth) {
			this.dateOfBirth = dateOfBirth;
		}
		
		public String getBloodGroup() {
			return bloodGroup;
		}
		
		public void setBloodGroup(String bloodGroup) {
			this.bloodGroup = bloodGroup;
		}
		
		public String getContact() {
			return contact;
		}
		
		public void setContact(String contact) {
			this.contact = contact;
		}
		
		public String getAddress() {
			return address;
		}
		
		public void setAddress(String address) {
			this.address = address;
		}
		
		public String getState() {
			return state;
		}
		
		public void setState(String state) {
			this.state = state;
		}
		
		public String getCity() {
			return city;
		}
		
		public void setCity(String city) {
			this.city = city;
		}
		
		public String getStatus() {
			return status;
		}
		
		public void setStatus(String status) {
			this.status = status;
		}
		
		public Hostel() {
			super();
		}
		
		@Override
		public String toString() {
			return "Hostel [studentName=" + ", password=" + password + ", emailId=" + emailId + ", gender=" + gender + ", dateOfBirth=" + dateOfBirth
					+ ", bloodGroup=" + bloodGroup + ", contact=" + contact + ", address=" + address + ", state=" + state
					+ ", city=" + city + ", status=" + status + "]";
		}
		

}
