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
    for(var i = 0; i < array.length; i ++){
        indexValue = indexOfMinimum(array, i);
        swap(array, indexValue, i);
    }
};

var array = [22, 11, 99, 88, 9, 7, 42];
selectionSort(array);
println("Array after sorting:  " + array);

Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);
var secondArray = [8, 12, 4, 2, 22, 9, 18, 99, 21];
selectionSort(secondArray);
Program.assertEqual(secondArray, [2, 4, 8, 9, 12, 18, 21, 22, 99]);
