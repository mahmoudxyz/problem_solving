void main(List<String> args) {
  var tryMatrix = [
    [5, 3, 5, 8],
    [4, 4, 7, 20],
    [9, 5, 20, 20],
    [2, 4, 23, 20],
    [4, 4, 4, -50]
  ];

  print(diagonalDifference(4, tryMatrix));
}

int diagonalDifference(int num, List<List<int>> myarray) {
  int arryRow = 0;
  int arrcolumn = 0;
  int faceDiagonal = 0;
  int backDiagonal = 0;
  if (num.isEven) {
    do {
      faceDiagonal += myarray[arryRow][arrcolumn];
      arrcolumn++;
      arryRow++;
    } while (num != arrcolumn);
    arrcolumn = 3;
    arryRow = 3;
    do {
      backDiagonal += myarray[arryRow][arrcolumn];
      arrcolumn--;
      arryRow--;
    } while (0 != arrcolumn);
  } else
    print('Please enter Squar matrix');
  return (backDiagonal - faceDiagonal) * -1;
}
