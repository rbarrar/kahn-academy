var insert = function(array, rightIndex, value) {
    for(var j = rightIndex;
        j >= 0 && array[j] > value;
        j--) {
        array[j + 1] = array[j];
    }
    array[j + 1] = value;
};

var insertionSort = function(array) {
    for(var i = 1; i < array.length; i ++){
        insert(array, i-1, array[i]);
    }
};

var array = [22, 11, 99, 88, 9, 7, 42];
insertionSort(array);
println("Array after sorting:  " + array);
Program.assertEqual(array, [7, 9, 11, 22, 42, 88, 99]);

var newArray = [33, -1, 10, 0, 5, 7, 48, 22];
insertionSort(newArray);
println("Array after sorting:  " + newArray);
Program.assertEqual(newArray, [-1, 0, 5, 7, 10, 22, 33, 48]);
