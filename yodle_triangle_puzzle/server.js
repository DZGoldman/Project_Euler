var request = require('request');
var cheerio = require('cheerio');

//access the data by scraping it directly:
request('http://www.yodlecareers.com/puzzles/triangle.txt', function (error, response, html) {
  var $ = cheerio.load(html)
  console.log($('body'));

    var singleArray =html.split(' ')
    var twoDArray = [];
//sort numbers into a 2D array (row 1 has 1 number, 2 has two numbers, etc):
//create 100 rows
    for (var i = 1; i < 101; i++) {
      var row = []
      //give each for appropriate length
      for (var j = 0; j < i; j++) {
        //remove unwanted characters (/n and such)
        var num = +singleArray.shift()
        row.push(num)
      }
      //add row to 2D array
      twoDArray.push(row)
    }

//Now we have our data, time to actually solve the problem. The strategy will be to elimate one row at a time starting with the bottom row, as follows: for each number in the second to last row, look at the two numbers it could lead to in a path. Add to its value the greater of those two numbers. Once this is done for each number in the second to last row, the last row can be ignored, and the process then repeated for the 3rd to last row, etc. In the end, the single number at the top of the pyramid will be the answer. Here we go:

// Starting with the 2d to last row, and working our way down:
for (var i = 98; i >=0; i--) {
  twoDArray[i].forEach(function (number, index) {
    //add the max of the two numbers it connects to in the row beneath it:
    var max= Math.max(twoDArray[i+1][index],twoDArray[i+1][index+1]  )
    twoDArray[i][index]=number+max
  })
}



});
