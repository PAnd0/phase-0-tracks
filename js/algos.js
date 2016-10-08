//Pseudocode
//write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//  create var longestStr
//
//  for each string in the input array,
//      if the current string is longer than longestStr, replace longestStr with the current string.
//  return longestStr

function longest(strArr){
  var longestStr = '';
  for (var i = 0; i < strArr.length; i++) {
    if (strArr[i].length > longestStr.length) {
      longestStr = strArr[i];
    }
  }
  return longestStr;
}

testArr = [["long phrase", "longest phrase", "longer phrase"], ["hi.", "how are you?"], ["bleep bloop", "fizz buzz", "foo", "bar"]];

for (var i = 0; i < testArr.length; i++) {
  console.log(longest(testArr[i]));
}
