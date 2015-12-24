// Uses my Sudoku solver: https://github.com/DZGoldman/DZGoldman.github.io


$(function () {

  var threeDigitsArray = []

grids.forEach(function (string) {


    for (var i = 0; i < 81; i++) {
      if (string[i]==0) {
        number =""
      }else {
        number = string[i]
      }

      $('input').eq(i).val(+number);
    }
    startButton();
    // console.log(Game.board);

    var threeDigits =  Game.board[0][0].number*100 + Game.board[0][1].number*10 + Game.board[0][2].number;
    threeDigitsArray.push(threeDigits);
    reset();

})
    //end of loop
    var solution=threeDigitsArray.reduce(function (a,b) {
      return a+b
    })
    console.log(solution);

})
