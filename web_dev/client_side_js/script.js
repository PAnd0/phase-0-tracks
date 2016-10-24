console.log("The script is running!");

// function addBlueBackground(event) {
//   var photo = document.getElementById("guy-pic");
//   photo.style.border = "1px solid blue";
// }

function swapPiratePic(event) {
  var photo = document.getElementById("guy-pic");
  photo.src="images/pirate.jpg";
}

function swapConcernedPic(event) {
  var photo = document.getElementById("guy-pic");
  photo.src="images/concerned.gif"
}

var pirateButton = document.getElementById("pirate-button");
pirateButton.addEventListener("click", swapPiratePic);

var concernedButton = document.getElementById("concerned-button");
concernedButton.addEventListener("click", swapConcernedPic);