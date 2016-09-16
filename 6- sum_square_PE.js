#solved

var eulerSix = function (num) {
  var sumOfSquares=0;
  for(var i = 1; i<=num; i++){
      sumOfSquares+= i*i;
    }

  var sum=0;
    for (var i = 1; i <=num ; i++) {
    sum+= i;
  }
  var squareOfSums= sum*sum;

  return squareOfSums-sumOfSquares;

}


// //Euler suggested solution
// var eulerSix = function (limit) {
//   var sqOfSum = Math.pow(limit*(limit+1)/2,2)
//   var sumOfSq = (2*limit+1)*(limit+1)*limit/6
//   return sqOfSum - sumOfSq
// };
