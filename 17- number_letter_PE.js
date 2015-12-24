var onesDigit =[0, 3, 3, 5, 4, 4, 3, 5, 5,4]

var teens = [3, 6, 6, 8, 8, 7,7,9,8,8]

var solver = function (number) {
  var numString = String(number);
  var length = numString.length
  var solution=0;

  switch (length){
    case 1:
    solution += onesDigit[number]
    break;

    case 2:
    if (numString[0]==1) {
      solution += teens[numString[1]]
    }else if (numString[0]==2) {
      solution+=6;
      solution+=onesDigit[numString[1]];
    }else if (numString[0]==4) {
      solution+=5;
      solution+=onesDigit[numString[1]];
    }
    else{
      //tens
      solution+=teens[numString[0]]-2

      //ones
      solution+=onesDigit[numString[1]]

    }

    break;

    case 3:
      //hundreds
      solution+= onesDigit[numString[0]];
      solution+=7;

      //recursion for last two digits
      if ( (numString[1]!=0) || (numString[2])!=0) {
        solution+=3
        var twoDigit = numString[1]+numString[2];
        var twoDigitNumber = +twoDigit
        solution+=solver(twoDigitNumber)
      }


    break
    case 4:
    solution = 11;
    break
  }

return solution
};
  var answer = 0;
for (var i = 1; i < 1001; i++) {
  answer+= solver(i);
  // window.setTimeout(function () {
    console.log(i, solver(i));
  // }, 1000*i)
}

console.log(answer);
