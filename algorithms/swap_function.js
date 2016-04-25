var swap = function(array, firstIndex, secondIndex) {
    var temp = array[firstIndex];
	array[firstIndex] = array[secondIndex];
	array[secondIndex] = temp;
};

var testArray = [7, 9, 4];



println(testArray);
swap(testArray, 0, 1);
Program.assertEqual(testArray, [9, 7, 4]);
swap(testArray, 1, 2);
Program.assertEqual(testArray, [9, 4, 7]);
swap(testArray, 1, 0);
Program.assertEqual(testArray, [4, 9, 7]);
