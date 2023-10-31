const double = (x) => x * 2;
const square = (x) => x * x;
const addThree = (x) => x + 3;

const originalNumber = 10;
const doubledNumber = double(originalNumber);
const squaredNumber = square(originalNumber);
const numberPlusThree = addThree(originalNumber);

const all = addThree(square(double(originalNumber)));

console.log({
    originalNumber,
    doubledNumber,
    squaredNumber,
    numberPlusThree,
    all
})