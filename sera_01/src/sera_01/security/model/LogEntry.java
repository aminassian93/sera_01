package sera_01.security.model;

import java.sql.Timestamp;

// These should only be created once the user successfully enters the house,
// if there's a burglary, there's no need to log anything because all appliances
// will be shut down. NEVERMIND (READ BELOW)

// There should be a LogEntry specifically for when each user enters a house (specified by
// isHouseEntry)

public class LogEntry {
	private Integer logID;
	
	// This will be used in 2 cases.
	// 1) If (isHouseEntry == true) && (userID == null), then shutdown appliances & notify users
	// 2) If (isHouseEntry == false) && (userID == null), send time_in/time_out and array "membersInHouse"
	//		to person who will calculated energy/water spent in that room, and cost for those resources
	//		membersInHouse will be used to charge all those users on their bill.
	
	private Boolean isHouseEntry;
	
	private Integer userID;
	private Timestamp time_in;
	private Timestamp time_out;
	// Specifies which room the user entered
	private Integer roomID;
	
	// Create array "membersInHouse" that stores userID's. That way, when a LogEntry for a
	// user who isn't carrying their phone, the cost (using time_in/time_out), will be split 
	// between users who were currently in the house.
	private Integer[] membersInHouse;
	

	// There will be a scenario where user enters room without phone (Thus, userID will be "null")
	// If it is null, then that log will be sent to CostModule ()
	public LogEntry(Integer logID, Integer userID, Timestamp time_in, Timestamp time_out, Integer roomID) {
		this.logID = logID;
		this.userID = userID;
		this.time_in = time_in;
		this.time_out = time_out;
		this.roomID = roomID;
	}
	
	public Integer getLogID() {
		return logID;
	}
	
	public void setLogID(Integer logID) {
		this.logID = logID;
	}
	
	public Boolean getIsHouseEntry() {
		return isHouseEntry;
	}

	public void setIsHouseEntry(Boolean isHouseEntry) {
		this.isHouseEntry = isHouseEntry;
	}
	
	public Integer getUserID() {
		return userID;
	}
	
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	
	public Timestamp getTime_in() {
		return time_in;
	}
	
	public void setTime_in(Timestamp time_in) {
		this.time_in = time_in;
	}
	
	public Timestamp getTime_out() {
		return time_out;
	}
	
	public void setTime_out(Timestamp time_out) {
		this.time_out = time_out;
	}
	
	public Integer getRoomID() {
		return roomID;
	}
	
	public void setRoomID(Integer roomID) {
		this.roomID = roomID;
	}
	
	
	
}
