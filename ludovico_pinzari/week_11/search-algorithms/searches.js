function binarySearch(arr, element){
    //  search through the array non-recursively for the element
    //  if the element is not found, return -1
    //  if the element is found, return the index at which it was found

    let start = 0, end = arr.length-1;

    // Iterate while start not meets end
    while (start <= end){

        // Find the mid index
        let mid = Math.floor((start + end)/2);

        // If element is present at mid, return True
        if (arr[mid] === element) return mid;

        // Else look in left or right half accordingly
        else if (arr[mid] < element)
             start = mid + 1;
        else
             end = mid - 1;
    }

    return -1;
}

function recursiveBinarySearch(arr, element){

  let start = 0, end = arr.length-1;

  return recursiveSearch(arr, element, start, end);
}

function recursiveSearch(arr, element, start, end){
    //  search through the array recursively for the element
    //  you may need to add more parameters to this function!
    //  if the element is not found, return -1
    //  if the element is found, return the index at which it was found


    // Base Condtion
    if (start > end) return -1;

    // Find the middle index
    let mid = Math.floor((start + end)/2);

    // Compare mid with given element
    if (arr[mid] === element) return mid;

    // If element at mid is greater than element,
    // search in the left half of mid
    if(arr[mid] > element)
        return recursiveSearch(arr, element, start, mid-1);
    else
      // If element at mid is smaller than element,
      // search in the right half of mid
      return recursiveSearch(arr, element, mid+1, end);
}

module.exports = {
    binarySearch,
    recursiveBinarySearch
}
