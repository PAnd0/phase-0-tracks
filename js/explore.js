// Pseudocode
// function that reverses parameter string
//    create an output string
//    starting at end of input string and working backwards,
//    for each letter, add letter to output string
//    return output string

function reverse(str) {
  output = '';
  for (var i = str.length - 1 ; i >= 0; i--){
    output += str[i];
  }
  return output;
}
var revStr = reverse('hello');
if (1 == 1){
  console.log(revStr);
}
