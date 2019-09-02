// InsertionSort to be used within bucket sort
function insertionSort(array) {
  var length = array.length;

  for(var i = 1; i < length; i++) {
    var temp = array[i];
    for(var j = i - 1; j >= 0 && array[j] > temp; j--) {
      array[j+1] = array[j];
    }
    array[j+1] = temp;
  }

  return array;
}



function bucketSort(items) {


  // Declaring vars
  var i,
      minValue = items[0],
      maxValue = items[0],
      bucketSize = 5;

  // Setting min and max values
  items.forEach(function (currentVal) {
  	if (currentVal < minValue) {
  		minValue = currentVal;
  	} else if (currentVal > maxValue) {
  		maxValue = currentVal;
  	}
  })

  // Initializing buckets
  var bucketCount = Math.floor((maxValue - minValue) / bucketSize) + 1;
  var allBuckets = new Array(bucketCount);

  for (i = 0; i < allBuckets.length; i++) {
    allBuckets[i] = [];
  }

  // Pushing values to buckets
  items.forEach(function (currentVal) {
  	allBuckets[Math.floor((currentVal - minValue) / bucketSize)].push(currentVal);
  });

  // Sorting buckets
  items.length = 0;

  allBuckets.forEach(function(bucket) {
  	insertionSort(bucket);
  	bucket.forEach(function (element) {
  		items.push(element)
  	});
  });

  return items;
}

module.exports = bucketSort;
