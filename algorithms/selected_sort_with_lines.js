var charHeight = 42;
var charWidth = 13;
var space = 30;

var displayArray = function(array, row) {
    textFont(createFont("monospace"), 16);
    fill(0, 0, 0);
    // text(array.join("  "), 50, charHeight*row);
    for(var i = 0; i < array.length; i++){
     var char = array[i];
     text(char, i*space, charHeight*row);
    }
};

var swap = function(array, firstIndex, secondIndex) {
    var temp = array[firstIndex];
    array[firstIndex] = array[secondIndex];
    array[secondIndex] = temp;
};

var indexOfMinimum = function(array, startIndex) {

    var minValue = array[startIndex];
    var minIndex = startIndex;

    for(var i = minIndex + 1; i < array.length; i++) {
        if(array[i] < minValue) {
            minIndex = i;
            minValue = array[i];
        }
    }
    return minIndex;
};

var selectionSort = function(array) {
    var indexValue;
    var height = 0;
    for(var i = 0; i < array.length; i ++){
        indexValue = indexOfMinimum(array, i);
        println(indexValue);
        var y1 = charHeight + (charHeight*i);
        var y2 = y1 + (charHeight-16);
        var x1 = indexValue*space;
        var x2 = space*i;
        displayArray(array, i+1);
        line(x1,y1,x2,y2);
        swap(array, indexValue, i);
    }
    displayArray(array, i+1);
    return array;
};

// var array = [10, 22, 11, 99, 88, 9];
// var array = [3,1, 2];
var array = [8, 24, 16, 42, 43, 4];

selectionSort(array);
