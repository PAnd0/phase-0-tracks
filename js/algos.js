// longest function pseudocode
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//  create var longestStr
//
//  for each string in the input array,
//      if the current string is longer than longestStr, replace longestStr with the current string.
//  return longestStr


// shareKeyValPair function pseudocode
//  write a function that takes two objects and checks to see if the objects share at least one key-value pair.
// create boolean sharePair and set to false as default.
//  for each key in obj1
//     for each key in obj2
//       if obj1 and obj2 share both keys and values
//         set sharePair to true
// return sharePair


// longest function returns longest string in input array
function longest(strArr) {
  var longestStr = '';
  for (var i = 0; i < strArr.length; i++) {
    if (strArr[i].length > longestStr.length) {
      longestStr = strArr[i];
    }
  }
  return longestStr;
}

// shareKeyValPair function returns whether any key, value pair is shared between two objects.
function shareKeyValPair(obj1, obj2) {
  var sharePair = false;

  for (var i in obj1) {
    for (var j in obj2) {
      if(i == j && obj1[i] == obj2[j]) {
        sharePair = true;
      }
    }
  }
  return sharePair;
}

// test longest function
testArr = [["long phrase", "longest phrase", "longer phrase"], ["hi.", "how are you?"], ["bleep bloop", "fizz buzz", "foo", "bar"]];

for (var i = 0; i < testArr.length; i++) {
  console.log(longest(testArr[i]));
}

// test shareKeyValPair function
var testArr = [
  {name: "Anstes", height: "29", color: "brown", age: "38"},
  { age: "38", occupation: "lumberjack"}
];

console.log(shareKeyValPair(testArr[0], testArr[1]));