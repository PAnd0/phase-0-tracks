// longest function pseudocode
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//  create var longestStr
//
//  for each string in the input array,
//      if the current string is longer than longestStr, replace longestStr with the current string.
//  return longestStr

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

// shareKeyValPair function pseudocode


// shareKeyValPair function returns whether any key, value pair is shared between two objects.
function shareKeyValPair(obj1, obj2) {
  var sharePair = false;

  // for ( i = 0; i < Object.keys(obj1).length; i++) {
  //   for ( j = 0; j < Object.keys(obj2).length; j++) {
  //     if (Object.keys(obj1)[i] == Object.keys(obj2)[j] && Object.values(obj1)[i] == Object.values(obj2)[j]) {
  //       sharePair = true;
  //     }
  //   }
  // }
  // console.log(sharePair);
  for (var i in obj1) {
    for (var j in obj2) {
      // console.log(i == j);
      console.log(obj1[i] == obj2[j]);
    }
  }
}

// // test longest function
// testArr = [["long phrase", "longest phrase", "longer phrase"], ["hi.", "how are you?"], ["bleep bloop", "fizz buzz", "foo", "bar"]];

// for (var i = 0; i < testArr.length; i++) {
//   console.log(longest(testArr[i]));
// }

// test shareKeyValPair function
var testArr = [
  {name: "Anstes", time: "29", color: "brown", age: "38"},
  {occupation: "lumberjack", age: "38"}
];

//console.log(shareKeyValPair(testArr[0], testArr[1]));
shareKeyValPair(testArr[0], testArr[1]);