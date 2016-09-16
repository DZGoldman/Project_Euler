function isPrime (number) {
  for (var i = 2; i <= Math.sqrt(number); i++) {
    if (number%i==0) {
      return false
    }
  };
  return true
}

var oddNum = 1;

while (true) {
  if (!isPrime(oddNum)) {
    var notFound = true;
    for (var i = 1; 2*i*i<oddNum; i++) {
      if (isPrime(oddNum-2*i*i) ) {
        notFound=false;
      }

    };
    if (notFound) {
      return oddNum
      break
    }



  }
oddNum+=2;
}
