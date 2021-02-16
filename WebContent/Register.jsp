<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  	<script src="js/bootstrap.min.js"></script>
<style>

body{
  background-image: url("bg1.jpg");
}

  .button1 {
  position: absolute;
  background-color:#00ff6a;
  width:150px;
  height:40px;
  left:320px;
  top:500px;
  font-size: 16px; 
  color:black;
  font-weight:bold; 
  }
  .pos{
    color:cyan;
position: absolute;
left:300px;
top:440px;
font-size: 30px;
font-weight:bold;
  }
  .pos1{
position: absolute;
right:300px;
top:440px;
font-size: 30px;
color:cyan;
font-weight:bold;
  }

  /* CSS reset */
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td { 
  margin:0;
  padding:0;
}
html,body {
  margin:0;
  padding:0;
}
table {
  border-collapse:collapse;
  border-spacing:0;
}
fieldset,img { 
  border:0;
}
input{
  border:1px solid #b0b0b0;
  padding:3px 5px 4px;
  color:#979797;
  width:190px;
}
address,caption,cite,code,dfn,th,var {
  font-style:normal;
  font-weight:normal;
}
ol,ul {
  list-style:none;
}
caption,th {
  text-align:left;
}
h1,h2,h3,h4,h5,h6 {
  font-size:100%;
  font-weight:normal;
}
q:before,q:after {
  content:'';
}
abbr,acronym { border:0;
}
/* General Demo Style */
body{
  font-family: "helvetica neue", helvetica;
  background: #000;
  font-weight: 400;
  font-size: 15px;
  color: #aa3e03;
  overflow-y: scroll;
  overflow-x: hidden;
}
.ie7 body{
  overflow:hidden;
}
a{
  color: #333;
  text-decoration: none;
}
.container{
  position: relative;
  text-align: center;
}
.clr{
  clear: both;
}
.container > header{
  padding: 30px 30px 10px 20px;
  margin: 0px 20px 10px 20px;
  position: relative;
  display: block;
  text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
    text-align: left;
}
.container > header h1{
  font-family: "helvetica neue", helvetica;
  font-size: 35px;
  line-height: 35px;
  position: relative;
  font-weight: 400;
  color: #fff;
  text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    padding: 0px 0px 5px 0px;
}
.container > header h1 span{

}
.container > header h2, p.info{
  font-size: 16px;
  font-style: italic;
  color: #f8f8f8;
  text-shadow: 1px 1px 1px rgba(0,0,0,0.6);
}

.slideshow,
.slideshow:after {
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0px;
    left: 0px;
    z-index: 0;
}
.slideshow:after {
    content: '';
    background: transparent url(../images/pattern.png) repeat top left;
}
.slideshow li span {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0px;
    left: 0px;
    color: transparent;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat: none;
    opacity: 0;
    z-index: 0;
  -webkit-backface-visibility: hidden;
    -webkit-animation: imageAnimation 36s linear infinite 0s;
    -moz-animation: imageAnimation 36s linear infinite 0s;
    -o-animation: imageAnimation 36s linear infinite 0s;
    -ms-animation: imageAnimation 36s linear infinite 0s;
    animation: imageAnimation 36s linear infinite 0s;
}
.slideshow li div {
    z-index: 1000;
    position: absolute;
    bottom: 30px;
    left: 0px;
    width: 100%;
    text-align: center;
    opacity: 0;
    -webkit-animation: titleAnimation 36s linear infinite 0s;
    -moz-animation: titleAnimation 36s linear infinite 0s;
    -o-animation: titleAnimation 36s linear infinite 0s;
    -ms-animation: titleAnimation 36s linear infinite 0s;
    animation: titleAnimation 36s linear infinite 0s;
}
.slideshow li div h3 {
  font-family: "helvetica neue", helvetica;
  text-transform: uppercase;
  font-size: 80px;
  padding: 0;
  line-height: 200px;
  color: rgba(255,255,255, 0.8);
}
.slideshow li:nth-child(1) span { background-image: url("bg1.jpg") }
.slideshow li:nth-child(2) span {
    background-image: url("abc3.jpg");
    -webkit-animation-delay: 6s;
    -moz-animation-delay: 6s;
    -o-animation-delay: 6s;
    -ms-animation-delay: 6s;
    animation-delay: 6s;
}
.slideshow li:nth-child(3) span {
    background-image: url("abc2.jpg");
    -webkit-animation-delay: 12s;
    -moz-animation-delay: 12s;
    -o-animation-delay: 12s;
    -ms-animation-delay: 12s;
    animation-delay: 12s;
}
.slideshow li:nth-child(4) span {
    background-image: url("abc1.jpg");
    -webkit-animation-delay: 18s;
    -moz-animation-delay: 18s;
    -o-animation-delay: 18s;
    -ms-animation-delay: 18s;
    animation-delay: 18s;
}
.slideshow li:nth-child(5) span {
    background-image: url("bg1.jpg");
    -webkit-animation-delay: 24s;
    -moz-animation-delay: 24s;
    -o-animation-delay: 24s;
    -ms-animation-delay: 24s;
    animation-delay: 24s;
}
.slideshow li:nth-child(6) span {
    background-image: url("abc.jpg");
    -webkit-animation-delay: 30s;
    -moz-animation-delay: 30s;
    -o-animation-delay: 30s;
    -ms-animation-delay: 30s;
    animation-delay: 30s;
}
.slideshow li:nth-child(2) div {
    -webkit-animation-delay: 6s;
    -moz-animation-delay: 6s;
    -o-animation-delay: 6s;
    -ms-animation-delay: 6s;
    animation-delay: 6s;
}
.slideshow li:nth-child(3) div {
    -webkit-animation-delay: 12s;
    -moz-animation-delay: 12s;
    -o-animation-delay: 12s;
    -ms-animation-delay: 12s;
    animation-delay: 12s;
}
.slideshow li:nth-child(4) div {
    -webkit-animation-delay: 18s;
    -moz-animation-delay: 18s;
    -o-animation-delay: 18s;
    -ms-animation-delay: 18s;
    animation-delay: 18s;
}
.slideshow li:nth-child(5) div {
    -webkit-animation-delay: 24s;
    -moz-animation-delay: 24s;
    -o-animation-delay: 24s;
    -ms-animation-delay: 24s;
    animation-delay: 24s;
}
.slideshow li:nth-child(6) div {
    -webkit-animation-delay: 30s;
    -moz-animation-delay: 30s;
    -o-animation-delay: 30s;
    -ms-animation-delay: 30s;
    animation-delay: 30s;
}
/* Animation for the slideshow images */
@-webkit-keyframes imageAnimation { 
  0% {
      opacity: 0;
      -webkit-animation-timing-function: ease-in;
  }
  8% {
      opacity: 1;
      -webkit-transform: scale(1.05);
      -webkit-animation-timing-function: ease-out;
  }
  17% {
      opacity: 1;
      -webkit-transform: scale(1.1);
  }
  25% {
      opacity: 0;
      -webkit-transform: scale(1.1);
  }
  100% { opacity: 0 }
}
@-moz-keyframes imageAnimation { 
  0% {
      opacity: 0;
      -moz-animation-timing-function: ease-in;
  }
  8% {
      opacity: 1;
      -moz-transform: scale(1.05);
      -moz-animation-timing-function: ease-out;
  }
  17% {
      opacity: 1;
      -moz-transform: scale(1.1);
  }
  25% {
      opacity: 0;
      -moz-transform: scale(1.1);
  }
  100% { opacity: 0 }
}
@-o-keyframes imageAnimation { 
  0% {
      opacity: 0;
      -o-animation-timing-function: ease-in;
  }
  8% {
      opacity: 1;
      -o-transform: scale(1.05);
      -o-animation-timing-function: ease-out;
  }
  17% {
      opacity: 1;
      -o-transform: scale(1.1);
  }
  25% {
      opacity: 0;
      -o-transform: scale(1.1);
  }
  100% { opacity: 0 }
}
@-ms-keyframes imageAnimation { 
  0% {
      opacity: 0;
      -ms-animation-timing-function: ease-in;
  }
  8% {
      opacity: 1;
      -ms-transform: scale(1.05);
      -ms-animation-timing-function: ease-out;
  }
  17% {
      opacity: 1;
      -ms-transform: scale(1.1);
  }
  25% {
      opacity: 0;
      -ms-transform: scale(1.1);
  }
  100% { opacity: 0 }
}
@keyframes imageAnimation { 
  0% {
      opacity: 0;
      animation-timing-function: ease-in;
  }
  8% {
      opacity: 1;
      transform: scale(1.05);
      animation-timing-function: ease-out;
  }
  17% {
      opacity: 1;
      transform: scale(1.1);
  }
  25% {
      opacity: 0;
      transform: scale(1.1);
  }
  100% { opacity: 0 }
}
/* Animation for the title */
@-webkit-keyframes titleAnimation { 
  0% {
      opacity: 0;
      -webkit-transform: translateY(200px);
  }
  8% {
      opacity: 1;
      -webkit-transform: translateY(0px);
  }
  17% {
      opacity: 1;
      -webkit-transform: scale(1);
  }
  19% { opacity: 0 }
  25% {
      opacity: 0;
      -webkit-transform: scale(10);
  }
  100% { opacity: 0 }
}
@-moz-keyframes titleAnimation { 
  0% {
      opacity: 0;
      -moz-transform: translateY(200px);
  }
  8% {
      opacity: 1;
      -moz-transform: translateY(0px);
  }
  17% {
      opacity: 1;
      -moz-transform: scale(1);
  }
  19% { opacity: 0 }
  25% {
      opacity: 0;
      -moz-transform: scale(10);
  }
  100% { opacity: 0 }
}
@-o-keyframes titleAnimation { 
  0% {
      opacity: 0;
      -o-transform: translateY(200px);
  }
  8% {
      opacity: 1;
      -o-transform: translateY(0px);
  }
  17% {
      opacity: 1;
      -o-transform: scale(1);
  }
  19% { opacity: 0 }
  25% {
      opacity: 0;
      -o-transform: scale(10);
  }
  100% { opacity: 0 }
}
@-ms-keyframes titleAnimation { 
  0% {
      opacity: 0;
      -ms-transform: translateY(200px);
  }
  8% {
      opacity: 1;
      -ms-transform: translateY(0px);
  }
  17% {
      opacity: 1;
      -ms-transform: scale(1);
  }
  19% { opacity: 0 }
  25% {
      opacity: 0;
      -webkit-transform: scale(10);
  }
  100% { opacity: 0 }
}
@keyframes titleAnimation { 
  0% {
      opacity: 0;
      transform: translateY(200px);
  }
  8% {
      opacity: 1;
      transform: translateY(0px);
  }
  17% {
      opacity: 1;
      transform: scale(1);
  }
  19% { opacity: 0 }
  25% {
      opacity: 0;
      transform: scale(10);
  }
  100% { opacity: 0 }
}
/* Show at least something when animations not supported */
.no-cssanimations .slideshow li span{
  opacity: 1;
}
@media screen and (max-width: 1140px) { 
  .slideshow li div h3 { font-size: 100px }
}
@media screen and (max-width: 600px) { 
  .slideshow li div h3 { font-size: 50px }
}


.ml5 {
  margin-top:50px;
  position: absolute;
  font-weight: 300;
  font-size: 3.5em;
  left:250px;
  background-color:rgb(0,0,0);
  background-color:rgb(0,0,0,0.8);
  color:gold;
}

.ml5 .text-wrapper {
  position: relative;
  display: inline-block;
  padding-top: 0.1em;
  padding-right: 0.05em;
  padding-bottom: 0.15em;
  line-height: 1em;
}

.ml5 .line {
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  margin: auto;
  height: 3px;
  width: 100%;
  background-color: #402d2d;
  transform-origin: 0.5 0;
}

.ml5 .ampersand {
  font-family: Baskerville, "EB Garamond", serif;
  font-style: italic;
  font-weight: 400;
  width: 1em;
  margin-right: -0.1em;
  margin-left: -0.1em;
}

.ml5 .letters {
  display: inline-block;
  opacity: 0;
}

.cont3{
   position: absolute;
  left: 100px;
  top:30px; 
}
.container{
top:250px;
color:black;
}

.sign-out{
	position: absolute;
	right: 20px;
	bottom:50px;
}
.btn-sign_out {
  background-color: Red; /* Blue background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 12px 16px; /* Some padding */
  font-size: 16px; /* Set a font size */
  cursor: pointer; /* Mouse pointer on hover */
}

/* Darker background on mouse-over */
.btn-sign_out:hover {
  background-color: black;
}

</style>
<body>
  <ul class="slideshow">
  <li><span>Image 01</span><div></div></li>
  <li><span>Image 02</span></li>
  <li><span>Image 03</span></li>
  <li><span>Image 04</span></li>
  <li><span>Image 05</span></li>
  <li><span>Image 06</span></li>
</ul>

<h1 class="ml5">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters letters-left"> ABC FOR TECHNOLOGY</span>
    <span class="letters ampersand">&amp;</span>
    <span class="letters letters-right">TRAINING</span>
    <span class="line line2"></span>
  </span>
</h1>

<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

<div class= "cont3">
   <h1 align="center"><a href="Register.jsp"><img src="0.png" class="img-rounded" width="120" height="120" alt="logo" align="middle" hspace="10"></a></h1>
</div>
<div class="sign-out">
	<form action="Admin.html">
		<button class="btn-sign_out"><i class="fa fa-sign-out"> Logout</i></button>
	</form>
</div>

<div class="container">
  <div class="btn-group btn-group-justified">
    <a href="student_disp.jsp" class="btn btn-warning btn-lg"><font size="5" color="black"><strong>STUDENT DETAILS</strong></font></a>
    <a href="drive_details.jsp" class="btn btn-danger btn-lg"><font size="5" color="black"><strong>DRIVE DETAILS</strong></font></a>
    <a href="drive_upadte.jsp" class="btn btn-primary btn-lg"><font size="5" color="black"><strong>UPDATE DRIVE</strong></font></a>
  </div>
</div>

  <script>
  anime.timeline({loop: true})
  .add({
    targets: '.ml5 .line',
    opacity: [0.5,1],
    scaleX: [0, 1],
    easing: "easeInOutExpo",
    duration: 700
  }).add({
    targets: '.ml5 .line',
    duration: 600,	
    easing: "easeOutExpo",
    translateY: function(e, i, l) {
      var offset = -0.625 + 0.625*2*i;
      return offset + "em";
    }
  }).add({
    targets: '.ml5 .ampersand',
    opacity: [0,1],
    scaleY: [0.5, 1],
    easing: "easeOutExpo",
    duration: 600,
    offset: '-=600'
  }).add({
    targets: '.ml5 .letters-left',
    opacity: [0,1],
    translateX: ["0.5em", 0],
    easing: "easeOutExpo",
    duration: 600,
    offset: '-=300'
  }).add({
    targets: '.ml5 .letters-right',
    opacity: [0,1],
    translateX: ["-0.5em", 0],
    easing: "easeOutExpo",
    duration: 600,
    offset: '-=600'
  }).add({
    targets: '.ml5',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });

  </script>
 </body>     
</html> 
