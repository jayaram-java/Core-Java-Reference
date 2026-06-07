



function mapExample() {

    const numbers = [1, 2, 3, 4, 5];

    const doubled = numbers.map(num => num * 2);

    console.log(doubled);

}

//mapExample();

function filterExample() {

    const numbers = [1, 2, 3, 4, 5];

    const evenNumbers = numbers.filter(num => num % 2 === 0);

    console.log(evenNumbers);


}

//filterExample();

function concatExample() {

    const arr1 = [1, 2];

    const arr2 = [3, 4];

    const combined = arr1.concat(arr2);

    console.log(combined);

}

//concatExample();

function joinExample() {

    const fruits = ['apple', 'banana', 'cherry'];
    const result = fruits.join(', ');
    console.log(result);  // Output: "apple, banana, cherry"
}

//joinExample();

function flatExample() {

    const nestedArray = [1, [2, 3], [4, [5, 6]]];
    const flatArray = nestedArray.flat(2); // 2 is the depth
    console.log(flatArray);  // Output: [1, 2, 3, 4, 5, 6]


}

flatExample();