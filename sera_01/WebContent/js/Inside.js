var database = firebase.database();

let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];


let currentDate = new Date();
let month = months[currentDate.getMonth()];
let day = currentDate.getDate();
let year = currentDate.getFullYear();
let milliseconds = currentDate.getMilliseconds();



// Configure # of seconds passed (START)
var startTime, endTime;

function initializeTime() {
	startTime = new Date();
};

// Used with initializeTime() to count # of seconds passed between a Room being turned "on" then "off"
function numberOfSecondsPassed() {
  endTime = new Date();
  let seconds = (endTime - startTime) / 1000; 
  
  return Math.round(seconds);
}
// (END)


let masterBedroom = document.getElementById("masterBedroom");
let livingRoom = document.getElementById("livingRoom");
let bathroom = document.getElementById("bathroom");
let kitchen = document.getElementById("kitchen");

let masterSwitch = {
	masterBedroom : false,
	livingRoom : false,
	bathroom : false,
	kitchen : false
};


// The IDs are just the name of the rooms.
function roomClicked(roomID) {
	
    switch(roomID) {
	    case masterBedroom.id:
	    		resourceSwitch(masterBedroom.id);	
	        break;
	        
	    case livingRoom.id:
	    		resourceSwitch(livingRoom.id);
	        break;
	        
	    case bathroom.id:
	    		resourceSwitch(bathroom.id);
	        break;
	        
	    case kitchen.id:
	    		resourceSwitch(kitchen.id);
	        break;
	        
	    default:
	        alert("Cannot identify which room is using resources");
    }
}


// Used to turn ON/OFF rooms based on roomID
function resourceSwitch(roomID) {
	if(masterSwitch.roomID) {
		// Turn room OFF
		// Create/Store log onto Firebase
		masterSwitch.roomID = false;
		document.getElementById(roomID).style.backgroundColor = "#329AF6";

		let roomName = roomID;
		let seconds = numberOfSecondsPassed();
		let formattedTime = getHourAndMinute();
		
		logUsageOnFirebase(userID, roomName, seconds, formattedTime);
		
	} else {
		// Turn room ON
		masterSwitch.roomID = true;
		document.getElementById(roomID).style.backgroundColor = "#FAF54F";
		initializeTime();
	}
}




// Returns Hour:Min and AM/PM marker (Ex: 6:30 PM) 
function getHourAndMinute() {
	let date = new Date();
    let hours = date.getHours();
    let minutes = date.getMinutes();
    
    let ampmMarker;
    
    if(hours >= 12) {
    		ampmMarker = 'PM';
    } else {
    		ampmMarker = 'AM';
    }
    
    hours %= 12;
    
    if(hours == 0) {
    		hours = 12;
    } 
    
    if(minutes < 10) {
    		minutes = '0' + minutes;
    }
   
    let time = hours + ':' + minutes + ' ' + ampmMarker;
    return time;
		
}


// Month and Day variables created globally. 
// Creates unique ID for every log
function logUsageOnFirebase(userID, roomName, seconds, formattedTime) {
	  
	  var logRef = firebase.database().ref('user_timestamps' + '/' + userID + "/" + month + '/' + day);
	  var newLogRef = logRef.push();
	  newLogRef.set({
	    'room_id': roomName,
	    'seconds': seconds,
	    'time' : formattedTime,
	    'user_id' : userID
	  });
}







// Create function for Yon.
// Specify name of Month and Day (Ex: "November" & "21") and will get all the Seconds for that day 
// UNDER a specific user. The function of this method will be to get Total Seconds (by adding all seconds).





