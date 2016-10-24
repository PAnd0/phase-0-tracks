// function swapPiratePic(event) {
//   document.getElementById("guy-pic").src="images/pirate.jpg";
//   document.getElementById("pirate-button").style.visibility='hidden';
//   document.getElementById("concerned-button").style.visibility='visible';
// }

// function swapConcernedPic(event) {
//   document.getElementById("guy-pic").src="images/concerned.gif"
//   document.getElementById("concerned-button").style.visibility='hidden';
//   document.getElementById("pirate-button").style.visibility='visible';
// }

// var pirateButton = document.getElementById("pirate-button");
// pirateButton.addEventListener("click", swapPiratePic);

// var concernedButton = document.getElementById("concerned-button");
// concernedButton.addEventListener("click", swapConcernedPic);

$(document).ready(function() {
  $("#pirate").hide();

  $("#pirate-button").click(function() {
    $("#concerned").hide();
    $("#pirate").show();
  });
})