package sera_01.security.model;

public class User {
	
	private String firstName;
	private String lastName;
	private Integer userID;
	
	public User(String firstName, String lastName, Integer userID) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.userID = userID;
	}
	
//	We won't bet creating a setter for userID since it should come with the Database, 
//	we don't want malicious users creating their own userID.
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Integer getUserID() {
		return userID;
	}
	
	
	

}
