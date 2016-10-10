var horseNames = ["Martin", "Spot", "Ed", "Sparkles"];
var colors = ["blue", "green", "red", "yellow"];

colors.push("purple");
horseNames.push("Chuck");

var stable = {}
for ( var i = 0; i < horseNames.length; i++) {
  stable[horseNames[i]] = colors[i];
}

function Car(color, year) {
  this.color = color;
  this.year = year;
  this.honk = function() {console.log("beep beep!");}
}

//test car constructor
var myCar = new Car("red", 2003);

console.log(myCar.color);
console.log(myCar.year);
myCar.honk();

var myOtherCar = new Car("gray", 2007);

console.log(myOtherCar.color);
console.log(myOtherCar.year);
myOtherCar.honk();


// //test stable creation
// console.log(stable);

