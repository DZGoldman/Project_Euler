function isPrime (number) {
  for (var i = 2; i <= Math.sqrt(number); i++) {
    if (number%i==0) {
      return false
    }
  };
  return true
}

function findNextPrime(prime) {
  if (prime==2) {
    return 3
  }else if (prime%2==0) {
      return 'your input is bad'
  } else {
    var potentialPrime = prime+2;
    if (isPrime(potentialPrime) ) {
      return potentialPrime
    }else{
      return findNextPrime(potentialPrime)
    }
  }
}


function hasFourPrimes (num) {
  var number = num;
  var distinctPrimes = [];
  var currentPrime = 2;

  while (currentPrime<number/2) {
    //if it's a prime factor
    if (number%currentPrime==0) {
      console.log('div');
      //divide it out
      number = number/currentPrime;
      //if its not there, add it to the array
      if (!distinctPrimes.includes(currentPrime)) {
        distinctPrimes.push(currentPrime);
        if (distinctPrimes.length>4) {
          console.log('hoops?');
          return false
        };
      }
    }else {
      currentPrime = findNextPrime(currentPrime);
      console.log('currentPrime', currentPrime);
    }
  };
  
  if (distinctPrimes.length==4) {
    return true
  }
  console.log('meh?');
  return false

}




var streak = 0;
var integer = 0;

while (streak<4) {
  if (hasFourPrimes(integer) ) {
    streak++
  }else{
    streak = 0;
  }
  integer++

}
