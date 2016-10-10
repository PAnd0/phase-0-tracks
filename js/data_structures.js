var horseNames = ["Martin", "Spot", "Ed", "Sparkles"];
var colors = ["blue", "green", "red", "yellow"];

colors.push("purple");
horseNames.push("Chuck");

var stable = {}
for ( var i = 0; i < horseNames.length; i++) {
  stable[horseNames[i]] = colors[i];
}

//test stable creation
console.log(stable);

