// Firebase stuff
var database = firebase.database();
let listOfValidIds = []; 

var query = firebase.database().ref("users").orderByKey();
query.once("value")
  .then(function(snapshot) {
    snapshot.forEach(function(childSnapshot) {
        // key will be "1111" first time, and "2222" second time
    		listOfValidIds.push(childSnapshot.key);

  });
});


let numberOfAttempts = 0;

//Entrance
let entrance = document.getElementById("entrance");

// Rooms   
let masterBedroom = document.getElementById("1");
let livingRoom = document.getElementById("2");
let bathroom = document.getElementById("3");
let kitchen = document.getElementById("4");

function entryAttempt() {
	
	if(numberOfAttempts > 2) {
		alert("Intruder!");
		
		// Disable House (Turn everything red and make all "onclick" functions null)
		entrance.style.backgroundColor = "#EF0505";
        entrance.onclick = null;

        // Rooms: disable onClick() and change background color to Red
        masterBedroom.style.backgroundColor = "#EF0505";
        livingRoom.style.backgroundColor = "#EF0505";
        bathroom.style.backgroundColor = "#EF0505";
        kitchen.style.backgroundColor = "#EF0505";

        masterBedroom.onclick = null;
        livingRoom.onclick = null;
        bathroom.onclick = null;
        kitchen.onclick = null;
        
        // Send email here. The method used in submitForm() won't work here because then you'll
        // be taken to InvalidEntryController and display a blank page.
        $.ajax({
            url: "InvalidEntryController",
            data: {
                
            },
            success: function(){
                alert("Notifying the authorities");
            }
        });

        // Couldn't figure out a way to disable submitButton's onclick()
        
	} else {
		alert("Please scan your chip.");
		numberOfAttempts++;
		
	}
}



// Used to create unique submit form 
function submitForm() {
	var form = document.createElement("form");
    let tempID = document.getElementById("userID").value; 
     
    
    if(checkUser(tempID)){
    		form.innerHTML = '<input type="hidden" name="validID" value="' + tempID + '">';
    		alert("Welcome!");
    } else {
    		alert("Denied");
    }
    
   
    form.method = "POST";
    form.action = "OutsideController";   

 
    document.body.append(form);

    form.submit();
}


// Used inside submitForm() to check if user entered correct ID (Based on list of users returned by Firebase)
function checkUser(tempID) {
	for (i = 0; i < listOfValidIds.length; i++) { 
      if(tempID == listOfValidIds[i]) {
      		return true;
      } 
  }
}

