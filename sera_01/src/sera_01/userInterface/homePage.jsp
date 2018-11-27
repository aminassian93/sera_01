<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SERA</title>
<link rel="icon" href="homeicon.png"></link>
</head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: abosolute;
    background-size: cover;
    background-image: url("https://i.pinimg.com/originals/f9/91/f1/f991f18be20922e2c4bce6200641ef91.jpg");
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;
}
</style>
<body>

<body background="https://i.pinimg.com/originals/f9/91/f1/f991f18be20922e2c4bce6200641ef91.jpg">


<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">SERA</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button"><i class="fa fa-info-circle"></i>About</a>
      <a href="accountPage.html" class="w3-bar-item w3-button"><i class="fa fa-user"></i> Account</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> Contact</a>
    </div>
    
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
  <a href="accountPage.html" onclick="w3_close()" class="w3-bar-item w3-button">Account</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">Contact</a>
</nav>

<!-- Header with full-height image
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:10px"></div> 
</header>-->

<div class="w3-row-padding w3-center w3-margin-top">
<div class="w3-third">
	<div style="min-height:460px"></div>  
</div>

<!-- Allows Middle Icon To Be Centered style="color:#F5F2F2;"-->
<div class="w3-third">
  <div class="w3-card w3-container" style="min-height:460px">
  <h3>Standard CSS</h3><br>
  <i class="fa fa-home w3-margin-bottom w3-text-theme" style="font-size:120px; color:#F5F2F2;" ></i>
  <p style="color:#F5F2F2;">Home Automation</p>
  <p style="color:#F5F2F2;">Security</p>
  <p style="color:#F5F2F2;">Resource Management</p>
  <p style="color:#F5F2F2;">Savings</p>
  </div>
</div>

<div class="w3-third">
	<div style="min-height:460px"></div>
</div>
</div>

<!-- About Section -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT THE COMPANY</h3>
  <p class="w3-center w3-large">Key features of our company</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-lock w3-margin-bottom w3-jumbo w3-center" style="color:#F5F2F2;"></i>
      <p class="w3-large" style="color:#F5F2F2;">Security</p>
      <p style="color:#F5F2F2;">Monitor the safety of your home from any location in the world.</p>
    </div>
    <!-- CSS syntax: <p style="color:red"> how to make text colored-->
    <div class="w3-quarter">
      <i class="fa fa-bar-chart w3-margin-bottom w3-jumbo" style="color:#F5F2F2;"></i>
      <p class="w3-large" style="color:#F5F2F2;">Resource Management</p>
      <p style="color:#F5F2F2;">Our resource manager will allow you to monitor all of your utility costs ranging from water to electronics.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-user-circle  w3-margin-bottom w3-jumbo" style="color:#F5F2F2;"></i>
      <p class="w3-large" style="color:#F5F2F2;">Account</p>
      <p style="color:#F5F2F2;">Account Details</div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo" style="color:#F5F2F2;"></i>
      <p class="w3-large" style="color:#F5F2F2;">Support</p>
      <p style="color:#F5F2F2;">Reach out to us with any questions or concerns.</p>
    </div>
  </div>
</div>


<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Skills Section -->
<div class="w3-container w3-padding-64" id="account">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3 style="color:#F5F2F2;">Account Breakdown.</h3>
      <p style="color:#F5F2F2;">Added Clarity To Bills</p>
    </div>
    <div class="w3-col m6">
      <p class="w3-wide"style="color:#F5F2F2;"><i class="fa fa-bath w3-margin-right w3-large" style="color:#F5F2F2;"></i>Water</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center"  style="width:40%">40%</div>
      </div>
      <p class="w3-wide"style="color:#F5F2F2;"><i class="fa fa-laptop w3-margin-right w3-xlarge" style="color:#F5F2F2;"></i>General Electronics</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:35%">35%</div>
      </div>
      <p class="w3-wide"style="color:#F5F2F2;"><i class="fa fa-bolt w3-margin-right w3-large" style="color:#F5F2F2;"></i>Appliances</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:15%">15%</div>
      </div>
      <p class="w3-wide"style="color:#F5F2F2;"><i class="fa fa-thermometer-quarter w3-margin-right w3-xlarge" style="color:#F5F2F2;"></i>Gas</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:10%">10%</div>
      </div>
    </div>
  </div>
</div>

<!-- Contact Section -->
<div class="w3-container w3-grey" style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Los Angeles, US</p>
    <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone: (323) 343-3000</p>
    <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email: Sera@mail.com</p>
    <br>
    <!--<form action="/action_page.php" target="_blank">-->
    <form action="MessageSent.php" method="post">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-button w3-black" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
    <!-- Image of location/map
    <img src="/w3images/map.jpg" class="w3-image w3-greyscale" style="width:100%;margin-top:48px">
  	-->
  </div>
</div>

<!-- Footer -->
<!--<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>-->
 
<script>
// Modal Image Gallery
/*function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}*/


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
    } else {
        mySidebar.style.display = 'block';
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>

</body>
</html>