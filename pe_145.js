var count=0;
for(var i =1; i<=1000000000; i+=2){
  var reverseArray = String(i).split('').reverse();

  var sum= +(reverseArray.join(''))+i

if (String(sum).split('').every(function (number) {return number%2==1 })) {
  count++
}

}

console.log(count)
