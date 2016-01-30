var request = require('request');
var cheerio = require('cheerio');


request('http://www.yodlecareers.com/puzzles/triangle.txt', function (error, response, html) {
    var singleArray =html.split(' ')
    var twoDArray = [];

    for (var i = 1; i < 101; i++) {
      var array = []
      for (var j = 0; j < i; j++) {
        var num = +singleArray.shift()
        array.push(num)
      }
      twoDArray.push(array)
    }

for (var i = 98; i >=0; i--) {
  twoDArray[i].forEach(function (number, index) {
    var max= Math.max(twoDArray[i+1][index],twoDArray[i+1][index+1]  )
    twoDArray[i][index]=number+max
  })
}
console.log(twoDArray);


});
